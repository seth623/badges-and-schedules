def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
    name_array.collect{ |name| badge_maker(name) }
end

def assign_rooms(name_array)
    room_array = Array.new

    name_array.each_with_index do |name, index| 
        room_array.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
    end 
    
    return room_array
end 

def printer(attendees)

    room_assignments = assign_rooms(attendees)
    
    attendees.each_with_index do |attendee, index|
        puts badge_maker(attendee)
        puts room_assignments[index]
    end 

end