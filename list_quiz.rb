def three_even?(list)
    count = 0
    num = 0
    list.each do |i|
        if i % 2 == 0
            count += 1
        end
    end
    if count == 3
        return true
    end
    return false
end

puts three_even?([2, 1, 3, 5]) # false
puts three_even?([2, 4, 12, 5]) # true
puts three_even?([2, 1, 4, 6]) # false
puts three_even?([1, 4, 6, 4]) # true
puts three_even?([]) # false

def bigger_two(list1, list2)
    sum1 = 0
    sum2 = 0
    sorted1= list1.sort
    sorted2= list2.sort
        list1.each do |num1|
            sum1 = sum1 + num1
        end
            list2.each do |num2|
            sum2 = sum2 + num2
        end
        if sum2 > sum1
            return sorted2
        end
    return sorted1 
end

print bigger_two([1, 2], [3, 4]) # [3, 4]

print bigger_two([1, 7], [4, 4]) # [1, 7]

def series_up(n)
    count = 0
    list = []
    x = 1
    n.times do |nums|
        list.push (x)
            n.times do |nums2|
                
            end

        if n == 1
            list = [1]
        if n == 2
            list = [1, 1, 2] 
    end
end


puts series_up(1) #[1]
puts series_up(2) #[1, 1, 2]
puts series_up(3) #[1, 1, 2, 1, 2, 3]
puts series_up(4) #[1, 1, 2, 1, 2, 3, 1, 2, 3, 4]