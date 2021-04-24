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


#simple project 

=begin

- Specify two numbers, representing a start and end year
- Use that range to create a loop
- Retrieve the Wikipedia entry that corresponds to each iteration of the loop
- Save that Wikipedia page to a corresponding file on your hard drive
- In a second loop, combine all those year entries into one file, with the name of "start_year-end_year.html"

=end

require "open-uri"
remote_base_url = "http://en.wikipedia.org/wiki"

start_year = 1900
end_year = 1906

(start_year..end_year).each do |yr|
    rpage = open(remote_base_url + "/" + yr.to_s)
    
    local_fname = "copy-of-" + yr.to_s + ".html"
    local_file = open(local_fname, "w")
    local_file.write(rpage.read)
    local_file.close

   # Optional output line:
   puts "Wrote file " + local_fname
   sleep 1
end

# Write to the compiled file now:
compiled_file = open(start_year.to_s + "-" + end_year.to_s + ".html",  "w")
(start_year..end_year).each do |yr|
    local_fname = "copy-of-" + yr.to_s + ".html"
    local_file = open(local_fname, "r")
    
    compiled_file.write(local_file.read)
    local_file.close
end

compiled_file.close

# Ask yourself: why not perform the actions in the second loop inside of the first loop?

require "open-uri"
remote_base_url = "http://en.wikipedia.org/wiki"

start_year = 1900
end_year = 1906
compiled_file = open(start_year.to_s + "-" + end_year.to_s + ".html",  "w")

(start_year..end_year).each do |yr|
    rpage = open(remote_base_url + "/" + yr.to_s)
    rpage_data = rpage.read  #Or  rpage_data = open(remote_base_url + "/" + yr.to_s).read

   # you can't call the read method twice on the same File object (in this example, rpage).
    compiled_file.write(rpage_data)
    
    local_fname = "copy-of-" + yr.to_s + ".html"
    local_file = open(local_fname, "w")
    local_file.write(rpage_data)
    local_file.close

    puts "Wrote file " + local_fname
    sleep 1
end
compiled_file.close