class Book
  attr_accessor :id,
                :name, 
                :author,
                :publisher, 
                :year, 
                :pages,
                :price,
                :cover
  @@count = 1

  def initialize(name,author,publisher,year,pages,price,cover)
    @id = @@count
    @@count = @@count + 1
    @name = name
    @author = author
    @publisher = publisher
    @year = year
    @pages = pages
    @price = price
    @cover = cover
  end

  def to_s
    @id.to_s + ": " + @name.to_s + ", " + @author.to_s + ", " + @publisher.to_s + ", " + @year.to_s + ", " + @pages.to_s + ", " + @price.to_s + ", " + @cover.to_s
  end
end

class BookORG
  def self.filter_author(array_of_objects, author)
    result = Array.new
    array_of_objects.each do |object|
      if object.author == author
        result.push(object)
      end
    end
    result
  end

  def self.filter_publisher(array_of_objects, publisher)
    result = Array.new
    array_of_objects.each do |object|
      if object.publisher == publisher
        result.push(object)
      end
    end
    result
  end

  def self.filter_year(array_of_objects, year)
    result = Array.new
    array_of_objects.each do |object|
      if object.year > year
        result.push(object)
      end
    end
    result
  end
end

first_book = Book.new( "The Little Prince","Antoine de Saint-Exupery","Reynal & Hitchcock",1943, 96, 15.99, "Soft")
second_book = Book.new( "The Great Gatsby","F. Scott Fitzgerald","Charles Scribner's Sons",1925, 208, 13.99, "Soft")
third_book = Book.new( "Listen Up, Mr. President","Helen Thomas","Charles Scribner's Sons",2010, 224, 18.99, "Soft")
fourth_book = Book.new( "Letter to a Hostage","Antoine de Saint-Exupery"," Babelcube Inc.",1944, 24, 3.99, "Soft")
fifth_book = Book.new( "The Hobbit","J. R. R. Tolkien","HarperCollins Publishers",1945, 400, 9.99, "Soft")

arr = [first_book,second_book,third_book,fourth_book,fifth_book]

puts "\nФільтруємо за автором - Antoine de Saint-Exupery:"
arr_res = BookORG.filter_author(arr, "Antoine de Saint-Exupery")
puts arr_res
puts "\nФільтруємо за виданням - Charles Scribner's Sons:"
arr_res = BookORG.filter_publisher(arr, "Charles Scribner's Sons")
puts arr_res
puts "\nФільтруємо за роком видання - 1943:"
arr_res = BookORG.filter_year(arr, 1943)
puts arr_res
