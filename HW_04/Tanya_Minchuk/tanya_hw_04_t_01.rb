def task_4_1(num)
  return '' if num > 1000 || num < 0
  return '0' if num.zero?

  fib = [1, 1]
  (num - 2).times do
    fib << fib[-1] + fib[-2]
  end
  puts fib.join(' ')
end
