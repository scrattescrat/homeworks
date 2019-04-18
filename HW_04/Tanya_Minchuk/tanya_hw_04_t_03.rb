def task_4_3(input)
  sorted_arr = input.flatten.uniq.sort { |a, b| b <=> a }
  puts sorted_arr
end
