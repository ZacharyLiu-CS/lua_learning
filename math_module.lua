module = {}

module.constant = "constant"

function module.func()
  io.write("this is an public function\n")
end

local function func2()
  io.write("this is private function\n")
end

function module.func2()
  func2()
end

return module
