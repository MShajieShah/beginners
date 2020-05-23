class Animal

attr_accessor :noise , :color

 def make_noise
	@noise
 end

 def set_noise
 	@noise = 'Oink!'
 end

 ## for getter/setter
 # same as above line:3
 # def noise
 # 	@noise
 # end

 # def noise=(value)
 # 	@noise = value
 # end

end
