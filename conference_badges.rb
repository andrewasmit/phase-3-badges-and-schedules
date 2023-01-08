require 'pry'

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator arr
    newArr=[]
    arr.each do |name| 
       newArr << badge_maker(name)
    end
    newArr
end

def assign_rooms arr
    newArr = []
    arr.each_with_index do |name, idx|
        newArr << "Hello, #{name}! You'll be assigned to room #{idx +1}!"
    end
    newArr
end

def printer arr
    batch_badge_creator(arr).each {|badge| puts badge}
    assign_rooms(arr).each {|ass| puts ass} 
end