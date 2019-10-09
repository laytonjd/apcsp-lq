def three_even?(list)
    x = 0 # variable to describe the position of the list
    (list.size - 1).times do |i| # use times instead of each because of the change in the list.size instead of list.each character
        if list[x] % 2 == 0 && list[x + 1] % 2 == 0 && list[x - 1] % 2 == 0 # starts a position 0 in the list and checks position 0, 1, 2 at the start
            return true
        end
        x = x + 1 # change the x value so that the position changes by 1. It checks position 1, 2, 3 this time around 
    end
    return false # if the first statement isn't true after the loop it returns false 
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
puts "\n"

def series_up(n)
    highest_num = 1
    list = []
    num = 1
    n.times do # loop for the number of times to do the loop
        num = 1 # resets the list to 1 so the series starts at 1
           while num <= highest_num # prints the numbers from 1 to the number in the input value. Loop in a loop 
                list.push(num) # pushes a number into the list everytime the loop is run
                num = num + 1 # increase the number until it is bigger than the highest number
           end
           highest_num = highest_num + 1 # sets the highest number up by 1 so the series get longer every time through
    end
    return list
end


print series_up(1) #[1]
print series_up(2) #[1, 1, 2]
print series_up(3) #[1, 1, 2, 1, 2, 3]
print series_up(4) #[1, 1, 2, 1, 2, 3, 1, 2, 3, 4]