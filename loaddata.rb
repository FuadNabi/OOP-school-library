require 'json'

class LoadData
  def self.load_books
    booksdata = './datas/books.json'
    books = []
    if File.exist?(booksdata) && !File.empty?(booksdata)
      records = JSON.parse(File.read(booksdata))
      records.each { |record| books << Book.new(record['title'], record['author']) }
    end
    books
  end

  def self.load_people
    peopledata = './datas/people.json'
    people = []

    if File.exist?(peopledata) && !File.empty?(peopledata)
      records = JSON.parse(File.read(peopledata))
      records.each do |record|
        person = if record['class'] == 'Student'
                   Student.new(record['parent_permission'], record['age'], record['name'])
                 else
                   Teacher.new('Math', record['age'], record['name'])
                 end
        person.id = record['id']
        people << person
      end
    end

    people
  end
end
