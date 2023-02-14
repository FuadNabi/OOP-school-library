require 'json'

class Database
  def self.save(books, people)
    save_books(books)
    save_people(people)
  end

  def self.save_books(books)
    return if books.nil?

    booksdata = './datas/books.json'
    records = read_existing_data(booksdata)

    books.each do |book|
      next if records.any? { |r| r['title'] == book.title && r['author'] == book.author }

      records << { title: book.title, author: book.author }
    end

    File.write(booksdata, JSON.generate(records))
  end

  def self.save_people(people)
    return if people.nil?

    peopledata = './datas/people.json'
    records = read_existing_data(peopledata)

    people.each do |person|
      next if records.any? { |r| r['id'] == person.id && r['name'] == person.name }

      records << { class: person.class, name: person.name, id: person.id, age: person.age,
                   parent_permission: person.can_use_services? }
    end
    File.write(peopledata, JSON.generate(records))
  end

  def self.read_existing_data(data)
    return [] unless File.exist?(data) && !File.empty?(data)

    JSON.parse(File.read(data))
  end
end
