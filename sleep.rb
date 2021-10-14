require 'time'
class BedTime

def sleep_time(*times)
	times.map do |x|
		a,b = x.map { |t| Time.parse(t) }
		(a - b.hour * 3600 - b.min * 60).strftime("%H:%M")
	end
end
end

puts BedTime.new([
	"07:50", 
	"07:51"]).sleep_time