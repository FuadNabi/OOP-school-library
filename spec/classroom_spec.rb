require './student'
require './classroom'

student = Student.new(21, 'Fuad', true)

describe Classroom do
  context 'Testing Classroom Class' do
    it 'The add_stundent method should add student to classroom' do
      classroom = Classroom.new('Geography')
      classroom.add_student(student)
      expect(classroom.students.length).to eq 1
    end
  end
end
