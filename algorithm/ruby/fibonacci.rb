require 'benchmark'

def fib(n)
   if (n < 2) then
       return n
   end
   return fib(n - 2) + fib(n - 1)
end

result = Benchmark.realtime do
  puts "result: #{fib(40)}"
end

puts "time: #{result} sec"