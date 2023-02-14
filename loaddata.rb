require 'json'

class LoadData
  def self.load_books
    filename = './datas/books.json'
    books = []
    if File.exist?(filename) && !File.empty?(filename)
      records = JSON.parse(File.read(filename))
      records.each { |record| books << Book.new(record['title'], record['author']) }
    end
    books
  end
end