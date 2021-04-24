#### Writing and reading to files

require "open-uri"

remote_base_url = "http://en.wikipedia.org/wiki"
remote_page_name = "Ada_Lovelace"
remote_full_url = remote_base_url +"/"+ remote_page_name

puts remote_base_url
puts remote_page_name
puts remote_full_url
puts "Downloading from: " + remote_full_url

kk = open(remote_full_url).read
#yy = open("emmy.html","w")


my_local_filename = "my_copy_of-" + remote_page_name + ".html"

puts "Writing to: " + my_local_filename

my_local_file = open(my_local_filename, "w")
my_local_file.write(kk)    
my_local_file.close

#yy.write(kk)
#yy.close

file_for_reading = open(my_local_filename, "r")
    puts file_for_reading.read
file_for_reading.close


#######Read and write, twice-over


require "open-uri"

remote_base_url = "http://en.wikipedia.org/wiki"
r1 = "Steve_Wozniak"
r2 = "Steve_Jobs"
f1 = "my_copy_of-" + r1 + ".html"
f2 = "my_copy_of-" + r2 + ".html"

# read the first url
remote_full_url = remote_base_url + "/" + r1
rpage = open(remote_full_url).read

# write the first file to disk
file = open(f1, "w")
file.write(rpage)
file.close

# read the second url
remote_full_url = remote_base_url + "/" + r2
rpage = open(remote_full_url).read

# write the second file to disk
file = open(f2, "w")
file.write(rpage)
file.close

# open a new file:
compiled_file = open("apple-guys.html", "w")

# reopen the first and second files again
k1 = open(f1, "r")
k2 = open(f2, "r")

compiled_file.write(k1.read)
compiled_file.write(k2.read)

k1.close
k2.close
compiled_file.close

#Loops and collection

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