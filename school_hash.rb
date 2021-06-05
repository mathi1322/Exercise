school_hash = [
  {:teacher => "Raju", :student => "Guru", :subject => "History", :mark1 => "100", :mark2 => "100", gender: 'male'},
  {:teacher => "Shanta", :student => "Murali", :subject => "Geography", :mark1 => "80", :mark2 => "60", gender: 'male'},
  {:teacher => "Prabhu", :student => "Guru", :subject => "Maths", :mark1 => "90", :mark2 => "95", gender: 'male'},
  {:teacher => "Raju", :student => "Murali", :subject => "Civics", :mark1 => "100", :mark2 => "100", gender: 'male'},
  {:teacher => "Raju", :student => "Guru", :subject => "Civics", :mark1 => "85", :mark2 => "80", gender: 'male'},
  {:teacher => "Raju", :student => "Jansi", :subject => "Civics", :mark1 => "80", :mark2 => "70", gender: 'female'},
  {:teacher => "Raju", :student => "Jansi", :subject => "History", :mark1 => "100", :mark2 => "70", gender: 'female'},
  {:teacher => "Raju", :student => "Murali", :subject => "History", :mark1 => "70", :mark2 => "100", gender: 'male'},
  {:teacher => "Shanta", :student => "Guru", :subject => "Geography", :mark1 => "80", :mark2 => "90", gender: 'male'},
  {:teacher => "Shanta", :student => "Jansi", :subject => "Geography", :mark1 => "60", :mark2 => "100", gender: 'female'},
  {:teacher => "Prabhu", :student => "Murali", :subject => "Maths", :mark1 => "100", :mark2 => "85", gender: 'male'},
  {:teacher => "Prabhu", :student => "Jansi", :subject => "Maths", :mark1 => "100", :mark2 => "90", gender: 'female'}
]
puts "1) Has teacher Shanta taught a student who has secured 80% marks and above on an average?"
a = school_hash.select {|x| x[:teacher] == "Shanta"}
b = a.map {|x| ((x[:mark1].to_i+x[:mark2].to_i)/2) >= 80} 
if b.index(true)
  puts true
else
  puts false
end
puts "2) "
print "i) Teachers names are: " 
print school_hash.map { |x| x.values[0] }.uniq
puts ''
print "ii) Students names are: "
print school_hash.map { |x| x.values[1] }.uniq
puts ''
puts "3) How many subjects do Murali study?"
print "Number of subjects Murali study: "
#a = school_hash.group_by{|x| x[:student]}.map{|x,y| [x, y.size]}.to_h
#puts a["Murali"]
puts school_hash.count { |x| x[:student] == 'Murali' }
puts "4) Is there a girl in the class?"
a = school_hash.map { |x| x[:gender] == 'female' }
if a.index(true)
  puts true
else
  puts false
end
puts "5) Find all students who have secured above 85% in any subject?"
a = school_hash.find_all {|x| ((x[:mark1].to_i+x[:mark2].to_i)/2) >= 85}
print a.map {|x| x[:student]}.uniq
puts " "
puts "6) Have all students secured above 80% in Geography?"
a = school_hash.select {|x| x[:subject] == "Geography"}
b = a.map {|x| ((x[:mark1].to_i+x[:mark2].to_i)/2) >= 80} 
if b.index(false)
  puts false
else
  puts true
end
puts "7) what is the maximum mark received by a student and what subject?"
a = school_hash.max_by{|x| ((x[:mark1].to_i+x[:mark2].to_i)/2) } 
puts "#{a[:student]} scored the maximum mark in #{a[:subject]}"
puts "8) what is the minimum mark in mathematics and by who?"
a = school_hash.select {|x| x[:subject] == "Maths"}
b = a.min_by{|x| ((x[:mark1].to_i+x[:mark2].to_i)/2)}
puts "#{b[:student]} scored the minimum mark #{(b[:mark1].to_f+b[:mark2].to_f)/2} in #{b[:subject]}"
puts "9) has anyone secured less than 50% marks?"
a = school_hash.map{|x| ((x[:mark1].to_i+x[:mark2].to_i)/2) < 50 } 
if a.index(false)
  puts true
else
  puts false
end
puts "10) Find the person who got the highest mark in geography?"
a = school_hash.select {|x| x[:subject] == "Geography"}
b = a.max_by{|x| ((x[:mark1].to_i+x[:mark2].to_i)/2)}
puts "#{b[:student]} got the hishest mark in geography"
puts "11) Find the lowest mark secured by male students in the class?"
a = school_hash.select {|x| x[:gender] == 'male'}
b = a.min_by{|x| ((x[:mark1].to_i+x[:mark2].to_i)/2)} 
puts "#{b[:student]} got the lowest mark in the class"