def task_3(_text)
  time = []
  strings.each_line do |st|
    next unless st.include?('Calling core with action')

    time.push(Time.parse(st.chomp))
  end
  if time.length == 2 then puts(time[1] - time[0]).to_s
  else puts '0'
  end
end
