class Timer

attr_accessor :seconds

  @@digits = %w{00 01 02 03 04 05 06 07 08 09 }

  def initialize()
    @seconds = 0
  end

  def time_string()
    hrs  = 0
    mins = 0
    secs = @seconds
    if secs > 60
	  mins = secs / 60
	  secs = secs % 60
	end
	if mins > 60
	  hrs  = mins / 60
	  mins = mins % 60
	end
    if hrs <= 9
	  hrs = @@digits[hrs]
	end		
    if mins <= 9
	  mins = @@digits[mins]
	end	
    if secs <= 9
	  secs = @@digits[secs]
	else
	end
    hrs.to_s + ":" + mins.to_s + ":" + secs.to_s
  end
end