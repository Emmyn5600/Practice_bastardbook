(1..10).each do |a_number|
    if a_number.even?
        puts "the even number #{a_number}"
    else
        puts "the odd number #{a_number}"
    end
end

# puts( 10 + "42") strings and numbers cannot be added together. 
#puts( 10.to_s + "42") we can use the to_s method to convert the number into a string

remote_base_url = "http://en.wikipedia.org/wiki"
(1..3).each do |some_number|
    r_url = remote_base_url + "/" + some_number.to_s
    puts r_url
end  