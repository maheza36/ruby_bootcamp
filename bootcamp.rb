require "./instructor"

instructor1 = Instructor.new({first_name:"Jorge",
  last_name:"Gomez",
  nick_name:"yonga",
  strength: "RoR"
  })
instructor2 = Instructor.new({first_name:"Diego",
  last_name:"Florez",
  nick_name:"Wepa",
  strength: "html,js,css"
  })
instructor3 = Instructor.new({first_name:"Camilo",
  last_name:"Ordoñez"
  })

puts "#{instructor1.first_name} #{instructor1.last_name} #{instructor1.nick_name} #{instructor1.clain_your_strength}"
puts "#{instructor2.first_name} #{instructor2.last_name} #{instructor2.nick_name} #{instructor2.clain_your_strength}"
puts "#{instructor3.first_name} #{instructor3.last_name} #{instructor3.nick_name}"
