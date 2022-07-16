function table_maxn(t)
  local mn = 0
  for k,v in pairs(t) do
    if mn < k then
      mn = k
    end
  end
  return mn
end


-- histogram = setmetatable({"test","gggg"}, {
--   __add = function (histogram,newtable)
--     for i = 1, table_maxn(newtable)do
--       histogram[i] = histogram[i]..newtable[i]
--     end
--     return histogram
--   end
-- })

histogram = {"test","gggg"}
m_histogram = {
  __add = function (histogram,newtable)
    for i = 1, table_maxn(newtable)do
      histogram[i] = histogram[i]..newtable[i]
    end
    return histogram
  end
}

histogram = setmetatable(histogram,m_histogram)


local test = {111,222}


local newtable = histogram + test
for k,v in ipairs(newtable)do
  print(k,v)
end
