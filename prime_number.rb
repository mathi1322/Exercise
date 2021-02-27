def prime(n)      
    p=0
    for d in 1..n
        if n % d == 0
        p = p + 1
        end 
    end
    if p == 2 
        return "#{n} is a prime number"
    else 
        return "#{n} is not a prime number"
    end
end
print "Enter n = "
n = gets.chomp.to_i 
puts prime(n)
