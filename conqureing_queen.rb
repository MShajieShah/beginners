class Capture
 attr_accessor :qC, :oC , :qR , :oR
def initialize(s)
	@qC = s[0][0].bytes[0].to_i
	@oC = s[1][0].bytes[0].to_i 
	@qR = s[0][1].to_i
	@oR = s[1][1].to_i
end

def can_capture
	if @qR == @oR
		true
	elsif @qC == @oC
		true
	elsif (@qR-@oR).abs == (@qC-@oC).abs
		true
	else
		false
	end
end

end
puts Capture.new(["A1","B2"]).can_capture