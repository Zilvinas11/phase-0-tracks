#
#
#release 1
def increase_prices(array, n)
    result=nil
    index=0
  array.each do |i|
    if i== n
     result= index
        puts "new"
    end
 index=index+1
  end
  return result
end

arr = [42, 89, 23, 1]

puts increase_prices(arr, 23)



#releas 2

def fib(num)
 
  p fib_array=[0,1]
until fib_array.length == num
 #add n[-2]+ n[-1] 
 #while n.lenght == input
 fib_array<< (fib_array[-1]+fib_array[-2])
  end
  return fib_array
end
p fib(100)






#release 3




def bubble_sort(arr)
  n = false
 while n== false
    n = true
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
         temp=arr[i]
         arr[i]=arr[i + 1]
         arr[i + 1] = temp
         n = false
      end
    end
  end

 return arr
end

a=[48,15,5,9,1,1]

puts bubble_sort(a)