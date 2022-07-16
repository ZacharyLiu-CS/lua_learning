-- basic operations
-- coroutine.create
-- coroutine.resume
-- coroutine.yield
-- coroutine.status
-- coroutine.wrap
-- coroutine.running


local co = coroutine.create(
  function (i)
    print(i)
  end
)

coroutine.resume(co,1)
print(coroutine.status(co))

print("------------------")

co = coroutine.wrap(
  function (i)
    print(i)
  end
)

co(2)

print("------------------")

co2 = coroutine.create(
function ()
  for i = 1, 10 do
    print(i)
    if i == 3 then
      print("co2 status:", coroutine.status(co2))
      print(coroutine.running())
    end
    coroutine.yield()
  end
end
)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)
print("co2 status:", coroutine.status(co2))
print(coroutine.running())

print("-----------------")

