def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, repetition = 2)
  ret_value = message
  (repetition-1).times do
    ret_value += (' ' + message)
  end
  ret_value
end

def start_of_word(message, num_char)
  message[0..(num_char-1)]
end

def first_word(message)
  message.split(" ")[0]
end

def titleize(message)
  string = message.split(" ")
  if string.length == 1
    message.capitalize
  else 
    #message is broken into string
	str2 = string.map { |i| i.capitalize }
	#everything is caps
	rest = str2[1..-1].join(" ").gsub("And ","and ").gsub("Over ","over ").gsub("The ","the ")
	#rest is a string without the first word with replacement
    str2[0] + ' ' + rest	

  end
end

