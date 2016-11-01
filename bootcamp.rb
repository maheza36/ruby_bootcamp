require "./student"
require "./instructor"
require "./lesson"

@lessons = []
@instructors = []

def create_lesson(subject, instructor)
  @lessons << Lesson.new({
    subject: subject,
    instructor: instructor
  })
end

def create_instructor(params)
  @instructors << Instructor.new(params)
end

def find_instructor(nickname)
  @instructors.each do |instructor|
    return instructor if instructor.nick_name = nickname
  end
end

def print_instructors
  @instructors.each{|instructor| puts "#{instructor.first_name} #{instructor.clain_your_strength}"}
end

def print_lessons
  @lessons.each_with_index do |lesson, index|
    puts "lesson number: #{index} => #{lesson.subject}"
    #puts "lesson instructor: #{lesson.instructor.nickname}"
  end
end


begin
  puts "Welcome to the Bootcamp Program"
  puts "1. Create instructor"
  puts "2. Create a new lesson"
  puts "10. Print Lessons"
  puts "11. Print instructor"
  @user_input = gets.chomp.downcase
    case @user_input
    when "1"
      instructor_params = {}
      puts "please type the first_name"
      instructor_params[:first_name] = gets.chomp.downcase
      puts "please type the last_name"
      instructor_params[:last_name] = gets.chomp.downcase
      puts "please type the nickname"
      instructor_params[:nick_name] = gets.chomp.downcase
      puts "please type the strength"
      instructor_params[:strength] = gets.chomp.downcase
      puts "please type the age"
      instructor_params[:age] = gets.chomp
      create_instructor(instructor_params)
    when "2"
        puts "Please type the subject of the lesson"
        subject = gets.chomp.downcase
        puts "Please type the nickname of the instructor"
        instructor_nickname= gets.chomp.downcase
        create_lesson(subject, find_instructor(instructor_nickname))
      when "10"
        print_lessons
      when  "11"
        print_instructors
    end
end while @user_input != "exit"
