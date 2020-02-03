class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select{|book| book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, word_count, self)
    end

    def total_words
        self.books.reduce(0){|total, book| total + book.word_count}
    end

    def self.most_words
        words = 0
        verbose_author = nil
        self.all.each{|author|
            if author.total_words > words
                words = author.total_words
                verbose_author = author
            end
        }
        verbose_author
    end

end