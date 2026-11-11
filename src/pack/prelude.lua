-- The vocabulary packs are written in. Everything here only builds plain tables;
-- the engine reads them once all of a pack's files have run.

local where = __where
__where = nil

local pack = { regions = {}, spaces = {}, items = {} }
__pack = pack

local function declare(list, entry, kind)
  if type(entry) ~= "table" then
    error(kind .. " expects a table, e.g. " .. kind .. " { id = \"...\" }", 3)
  end
  entry.__src = where(3)
  list[#list + 1] = entry
  return entry
end

function region(entry) local r = declare(pack.regions, entry, "region"); return r end
function space(entry) local s = declare(pack.spaces, entry, "space"); return s end

-- Conditions ---------------------------------------------------------------

function flag(name) return { __cond = "flag", name = name } end
function visited(id) return { __cond = "visited", id = id } end
function no(condition) return { __cond = "not", condition } end

-- `all { a, b }` and `all(a, b)` mean the same thing; so do the two forms of `any`.
local function conditions(...)
  local first = ...
  if select("#", ...) == 1 and type(first) == "table" and first.__cond == nil then
    return first
  end
  return { ... }
end
function all(...) return { __cond = "all", list = conditions(...) } end
function any(...) return { __cond = "any", list = conditions(...) } end

-- `item { id = ... }` declares an item; `item "id"` is the condition "the player carries it".
function item(arg)
  if type(arg) == "table" then
    local i = declare(pack.items, arg, "item")
    return i
  end
  return { __cond = "item", id = arg }
end

-- Effects ------------------------------------------------------------------

function set(name) return { __fx = "set", name = name } end
function clear(name) return { __fx = "clear", name = name } end
function give(id) return { __fx = "give", id = id } end
function take(id) return { __fx = "take", id = id } end
function say(text) return { __fx = "say", text = text } end
function go(id) return { __fx = "go", id = id } end
function fx(kind, color) return { __fx = "fx", kind = kind, color = color } end

-- Ambience -----------------------------------------------------------------

for _, kind in ipairs { "rain", "snow", "drip", "embers", "fireflies", "fog",
                        "flicker", "shimmer", "stars", "steam", "dust" } do
  _G[kind] = function(options)
    local spec = {}
    for k, v in pairs(options or {}) do spec[k] = v end
    spec.__amb = kind
    return spec
  end
end

-- Blueprints ---------------------------------------------------------------

local function copy(value)
  if type(value) ~= "table" then return value end
  local out = {}
  for k, v in pairs(value) do out[k] = copy(v) end
  return out
end

-- `candle = blueprint { ... }` then `candle()` or `candle { name = "a black candle" }`:
-- every call yields a fresh copy, with the given fields replacing the blueprint's.
function blueprint(base)
  if type(base) ~= "table" then error("blueprint expects a table", 2) end
  return function(overrides)
    local thing = copy(base)
    for k, v in pairs(overrides or {}) do thing[k] = v end
    return thing
  end
end

-- Script context -----------------------------------------------------------
-- Handed to script hooks. Reads see the player's progress (and this hook's own writes);
-- writes are collected and applied by the engine when the hook returns.

local Ctx = {}
Ctx.__index = Ctx

local function emit(ctx, effect) ctx._out[#ctx._out + 1] = effect end

function Ctx:flag(name) return self._flags[name] == true end
function Ctx:has(id) return self._items[id] == true end
function Ctx:visited(id) return self._visited[id] == true end
function Ctx:set(name) self._flags[name] = true; emit(self, set(name)) end
function Ctx:clear(name) self._flags[name] = nil; emit(self, clear(name)) end
function Ctx:give(id) self._items[id] = true; emit(self, give(id)) end
function Ctx:take(id) self._items[id] = nil; emit(self, take(id)) end
function Ctx:say(text) emit(self, say(text)) end
function Ctx:go(id) emit(self, go(id)) end
function Ctx:fx(kind, color) emit(self, fx(kind, color)) end

__ctx = function(here, flags, items, visited_spaces)
  return setmetatable({
    here = here, _flags = flags, _items = items, _visited = visited_spaces, _out = {},
  }, Ctx)
end
