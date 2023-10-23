# Exercise 3: Formatting and Objects
# Name: Curtis Kauer

class Student
  attr_reader :MAX_COURSES_CAN_TAKE
  attr_reader :student_schedule

  def initialize
    @MAX_COURSES_CAN_TAKE = 5;
    @student_schedule = Schedule.new
  end

  def remove_from_schedule(course, course_list)
    course_list.remove(course)
  end
    
  def add_to_schedule(course, course_list, current_number_of_courses_being_taken)
    course_list.add(course) if current_number_of_courses_being_taken < @MAX_COURSES_CAN_TAKE
  end
end

student_example = Student.new
current_student_schedule = student_example.student_schedule
quarter = current_student_schedule.quarter[quarter_id]
course_list = quarter.course_list
current_number_of_courses_being_taken = course_list.maximum_number_of_courses

add_to_schedule(course, course_list, current_number_of_courses_being_taken)
remove_from_schedule(course, course_list)