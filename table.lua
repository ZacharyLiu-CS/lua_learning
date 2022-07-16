Config = {}
Config.mod = "hello"
Config.num = 100
print(Config.mod)
print(Config)
for key, var in pairs(Config) do
  print(key,var)
end

