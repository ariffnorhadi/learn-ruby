# RSpec - Test Doubles / Rspec Mocks
# https://www.tutorialspoint.com/rspec/rspec_test_doubles.htm

# a Double is an object which can 'stand in' for another object.
# let say we are building an application for a School and
# we have a class representing a classroom of students
# and another class for students
# that is we have a Classroom class and a Student class
# we're gonn have to start to write code for one of the classes first,
# so let's start with Classroom

class ClassRoom
  def initialize(students)
    @students = students
  end

  def list_student_names
    @students.map(&:name).join(',')
  end
end

# we want to test this class, but how do we do that if we haven't created the Student class yet?
# this is where we need a test Double

# we can have 'dummy' class that behaves like a Student object then our ClassRoom class tests will
# not depend on the Student class. This is called as test isolation.

# if the ClassRoom tests don't rely on other class, then when the test fails, this means there is
# a bug in the class and not some other class.

# this is where RSpec Doubles (mocks) become useful. the list_student_names method calls the
# name method on each Student object in its @student member variable.
# therefore, we need a Double which implements a name method

describe ClassRoom do

  it 'the list_student_names method should work correctly' do
    student1 = double('student')
    student2 = double('student')

    allow(student1).to receive(:name) {'Ariff Norhadi'}
    allow(student2).to receive(:name) {'Another Person'}

    cr = ClassRoom.new [student1, student2]
    expect(cr.list_student_names).to eq('Ariff Norhadi,Another Person')
  end
end






















