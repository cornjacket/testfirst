class Book
  
  attr_accessor :title  
  
  def initialize
    @book = ""
  end

  def title
    string = @book.split(" ")
    if string.length == 1
      @book.capitalize
    else 
      #message is broken into string
	  str2 = string.map { |i| i.capitalize }
	  #everything is caps
	  rest = str2[1..-1].join(" ").gsub("And ","and ").gsub("Over ","over ").gsub("The ","the ")
	  #rest is a string without the first word with replacement
      str2[0] + ' ' + rest	

    end
  end

end