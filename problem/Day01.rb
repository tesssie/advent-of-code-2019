def fuel_requirement(mass)
   sum = 0
   while(mass/3-2>0)
      mass = mass/3-2
      sum+=mass
      p sum
   end
   sum
end

sum =0
f = File.open("../inputs/input-01.txt", "r")
f.each_line do |line|
  sum+=fuel_requirement(line.strip.to_i)
end
f.close
puts sum

