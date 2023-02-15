require './book'
require './person'

person = Person.new(20, 'Bashir')

describe Book do
  context 'Testing Book Class' do
    it 'the rent method should add the current book to rentals' do
      book = Book.new('Harry Potter', 'Rowling')
      book.rent('12-12-2012', person)
      expect(book.rentals.length).to eq 1
    end
  end
end
