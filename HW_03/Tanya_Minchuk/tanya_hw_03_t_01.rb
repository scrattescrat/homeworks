def task_1(text)
  strings = text.split("\n")
  strings2 = Array[]

  strings.each do |st|
    if st.downcase.include?('error')
      strings2.push(st + "\n")
    else strings2.push("\n")
    end
  end
  strings2
end
