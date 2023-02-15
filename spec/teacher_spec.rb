require './teacher'

describe Teacher do
  context 'Testing the Teacher class' do
    it 'The Teacher should be able to use service by default' do
      teacher = Teacher.new(21, 'Fuad', 'Geography')
      expect(teacher.can_use_services?).to be true
    end
  end
end
