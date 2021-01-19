def badge_maker(names)
    return "Hello, my name is #{names}."
end

def batch_badge_creator(names)
    badges = []
    names.each {|name| badges << (badge_maker(name))}
    return badges
  end

def assign_rooms(attendees)
    room_assignments = []
    attendees.each_with_index{|name, room| room_assignments << "Hello, #{name}! You'll be assigned to room #{room + 1}!"} 
    return room_assignments
end

def printer(arr)
    batch_badge_creator(arr).each do |badge|
        puts badge
    end

    assign_rooms(arr).each do |room|
        puts room
    end
end