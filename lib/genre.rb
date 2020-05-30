class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def self.create(genre_name)
        new_genre = Genre.new(genre_name)
        @@all << new_genre
        new_genre
    end
end