local newProducer
function produce()
  local i = 0
  while true do
    i = i + 1
    coroutine.yield(i)
  end
end

function consumer()
  while true do
    local i = receive()
    print(i)
  end
end

function receive()
  local status, value = coroutine.resume(newProducer)
  return value
end

newProducer = coroutine.create(produce)
consumer()
