def fib(n)
    a=0
    b=1 
    arr=[]
    for c in 1..n
        c = a + b
        a=b
        b=c
        d=arr.push(a)
    end
    return d
end
puts "How many numbers do you want to print : "
n = gets.chomp.to_i 
puts "First #{n} numbers are : "
print "#{fib(n)} "
