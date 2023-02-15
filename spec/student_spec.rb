require './student'
require './classroom'

geography = Classroom.new('Geography')

describe Student do
  context 'Testing the Student Class' do
    it 'The add_student method should add the current student to classroom' do
      student = Student.new(21, 'Fuad', true)
      student.add_classroom(geography)
      expect(student.classroom).to eq geography
    end
  end
end
