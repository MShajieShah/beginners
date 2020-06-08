require 'time'

def bed_time(*times)
	times.map do |x|
		a,b = x.map { |t| Time.parse(t) }
		(a - b.hour * 3600 - b.min * 60).strftime("%H:%M")
	end
end

puts bed_time(["07:50", "07:51"])