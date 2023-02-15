require './rental'
require './student'
require './book'

student = Student.new(21, 'Fuad', true)
book = Book.new('Harry Potter', 'Rowling')
rental = Rental.new('12/12/12', book, student)

describe Rental do
  context 'Testing Rental Class' do
    it 'The person should have rental added' do
      expect(student.rentals[0]).to eq rental
    end

    it 'The book should have a record of the rental instance' do
      expect(book.rentals[0]).to eq rental
    end
  end
end
