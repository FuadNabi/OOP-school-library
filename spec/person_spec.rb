require './book'
require './person'

person = Person.new(20, 'Bash')
child = Person.new(18, 'Abdulla')

describe Person do
  context 'Testing the Person Class' do
    it 'The correct_name method should return person name' do
      expect(person.correct_name).to eq 'Bash'
    end

    it 'the can_use_services? method should return true' do
      expect(person.can_use_services?).to be true
    end

    it 'The private method of_age? method in can_use_services? method should return true' do
      expect(child.can_use_services?).to be true
    end
  end
end
