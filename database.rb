require 'json'

class Database
  def self.save(books)
    save_books(books)
  end

  def self.save_books(books)
    return if books.nil?
    filename = './datas/books.json'
    records = []
    if File.exist?(filename)
      existing_data = File.read(filename)
      if existing_data
        records = JSON.parse(existing_data) unless existing_data.empty?
      end
    end
    books.each do |book|
      unless records.any? { |r| r['title'] == book.title && r['author'] == book.author }
        records << { title: book.title, author: book.author }
      end
    end
    File.write(filename, JSON.generate(records))
  end
end
