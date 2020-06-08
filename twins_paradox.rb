def twins_paradox(age, distance, velocity)
  time = distance / velocity * 2
  jack = age + time * Math.sqrt(1 - velocity ** 2)
  jill = age + time
  "Jack's age is %.1f, Jill's age is %.1f" % [jack, jill]
end
puts twins_paradox(20, 10, 0.8)