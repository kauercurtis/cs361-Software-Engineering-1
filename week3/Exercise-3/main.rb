# Exercise 3: Formatting and Objects
# Name: Curtis Kauer
# Explanation about some of my choices:
# 1. From the given syntax and the reading material, I thought it best if the student 
# class "understood" its own schedule thus making a member variable of the metaphorical 
# Schedule class
# 2. From context clues, I think MAX_COURSES refers to the the maximum number of courses 
# a student can take thus making it a member variable 
# 3. Assuming that all I know is that there is a class somewhere called course_list which 
# has a member variable called maximum_number_of_courses, and this Student class should only 
# talk to it's friends, and given context clues on the structure of adding/removing to/from a 
# schedule, I assume that max_courses variable is the number of courses being currently taken by a 
# Student, thus the name change.

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