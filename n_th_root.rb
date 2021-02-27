def nthrt(x,n) 
    return x ** (1.0/n)
end
print "Enter the number x = "
x = gets.chomp.to_f
print "and n = "
n = gets.chomp.to_i
print "#{n}-th root of #{x} is "
print nthrt(x,n)
