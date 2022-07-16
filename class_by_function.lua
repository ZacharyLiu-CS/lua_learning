function clone(tab)
  local ins = {}
  for key,val in pairs(tab)do 
    ins[key] = val
  end
  return ins
end
-- make constructor
People = {}
People.sayHi = function (self)
  print("People say hi"..self.name)
end

-- constructor function
People.new = function(name)
  local self = clone(People)
  self.name = name
  return self
end

-- copy function
function copy(dist,tab)
  for key ,val in pairs(tab)do
    dist[key] = val
  end
end

local p = People.new("zhenliu")

p:sayHi()
p.sayHi(p)

--make inherit
Man = {}
Man.new = function(name)
  local self = People.new(name)
  copy(self,Man)
  return self
end

Man.sayHello = function()
  print("Man say hello")
end

local m = Man.new("list")
m:sayHello()
m:sayHi()
