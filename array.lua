arr = {1,2,3,4,"hello"}
-- for key, val in pairs(arr)do
--   print(key,val)
-- end
for val = 1, 100 do
  table.insert(arr,1,val)
end
for key, val in pairs(arr)do
  print(key,val)
end
print(table.maxn(arr))
