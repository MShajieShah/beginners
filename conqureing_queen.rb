def can_capture(s)
	qC = s[0][0].to_i 
	oC = s[1][0].to_i 
	qR = s[0][1].to_i
	oR = s[1][1].to_i

	if qR == oR
		true
	elsif qC == oC
		true
	elsif (qR-oR).abs == (qC-oC).abs
		true
	else
		false
	end
end

puts can_capture(["A1","B2"])