
function People(name)
  local self = {}
  local function init()
    self.name = name
  end


  self.sayHi = function()
    print("hi "..self.name)
  end
  init()
  return self
end

local p = People("zhang san")
p:sayHi()

function Man(name)
  local self = People(name)

  local function init()
  end

  self.sayHello = function()
    print("hello "..self.name)
  end
  init()
  return self
end

local m = Man("Li Si")
m:sayHello()
m:sayHi()
