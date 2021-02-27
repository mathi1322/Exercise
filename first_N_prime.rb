def is_prime?(n)      
    divisor_count = 0
    for d in 1..n
        if n % d == 0
            divisor_count += 1
        end 
    end
    return divisor_count == 2
end
def fpr(x)
    arr=[]
    c=1
    while (c > 0) && (arr.length < x) do
        if is_prime?(c)
            arr.push(c)
        end
      c += 1
    end
    return arr
end
print fpr(10)
