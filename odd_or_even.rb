def evenodd(n)      
    if n % 2 == 0
        return "#{n} is even"
    else return "#{n} is odd"
    end 
end
print "Enter n = "
n = gets.chomp.to_i 
puts evenodd(n)
