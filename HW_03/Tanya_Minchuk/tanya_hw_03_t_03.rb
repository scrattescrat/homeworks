require 'time'
def task_3(text)
  time = []
  strings = text.split("\n")
  strings.each do |st|
    next unless st.include?('Calling core with action')
    time.push(Time.parse(st))
  end
  if time.length == 2 then puts(time[1] - time[0]).to_f.to_s
  else puts '0'
  end
end
