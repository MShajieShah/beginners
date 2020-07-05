class TimeAdjust
	attr_accessor :now , :hrs , :min , :sec
	
	def time_alter
  		time = @now [0..1].to_i * 3600 + @now [3..4].to_i * 60 + @now [6..7].to_i
  		time += @hrs * 3600 + @min * 60 + @sec
  		"%02d:%02d:%02d" % [time / 3600, time / 60 % 60, time % 60]
	
	end
end

puts TimeAdjust.new([
	:now => "01:00:00",
	:hrs => 1,
	:min => 30,
	:sec => 10]).time_alter