def fact(n)
    if n <= 1 
        return 1 
    else 
        return n * fact(n-1)
    end
end
print "Enter the number : "
n = gets.chomp.to_i 
print "Value of #{n}! = "
puts fact(n)
