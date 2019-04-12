def task_4(text)
  new = text.chars
  sum = 0
  new.each do |i|
    sum += i.to_i
  end
  puts sum
end
