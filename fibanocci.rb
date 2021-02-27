def fib(n)
    if n<=2
        return 1 
    else 
         return fib(n-1)+fib(n-2)
    end
end
puts "Enter how many numbers do you want to print : "
n = gets.chomp.to_i 
puts "First #{n} numbers of the fibonacci series are : "
for p in 1..n        
    print "#{fib(p)} "
end
