
katz_deli = []

def line katz_deli
    line_string = ''
    if katz_deli.length == 0 then
        line_string = "The line is currently empty."

    else
        line_string = "The line is currently:"
        katz_deli.each do |name|
            line_string += " #{(katz_deli.index name) +1}. #{name}"
        end
    end
    puts line_string
end

def take_a_number katz_deli, new_name
    katz_deli.push new_name
    puts "Welcome, #{new_name}. You are number #{katz_deli.index(new_name) + 1} in line."
end

def now_serving katz_deli
    if katz_deli.length == 0 then
        puts "There is nobody waiting to be served!"
    else 
    puts "Currently serving #{katz_deli[0]}."
    end
    katz_deli.shift
    katz_deli
end


#line ["bob", "joe"]