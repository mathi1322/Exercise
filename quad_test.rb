def sqr(a)
a * a
end
def sqrt(n)
    n ** (1.0/2)
end

def quad_pos(a, b, c)
(-b + (sqrt( sqr(b) - 4*a*c ))) / 2*a
end

def quad_neg(a, b, c)
(-b - (sqrt( sqr(b) - 4*a*c ))) / 2*a
end
puts "Enter the value of a: "
a = gets.chomp.to_f

puts "Enter the value of b: "
b = gets.chomp.to_f

puts "Enter the value of c: "
c = gets.chomp.to_f

puts "Roots are: "
puts quad_pos(a, b, c).to_s + " and " + quad_neg(a, b, c).to_s
