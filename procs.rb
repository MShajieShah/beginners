def adds_n(n)
	Proc.new { |a| a + n }
end
adds10 = adds_n(10)
puts adds10.call(44)
puts adds10.call(20)