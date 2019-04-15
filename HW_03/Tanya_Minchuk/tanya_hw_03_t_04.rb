def task_4(text)
  text2 = text.chars
  sum = 0
  text2.each do |i|
    sum += i.to_i
  end
  sum
end
