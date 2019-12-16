require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song| 
            song.artist == self 
        end
    end

    def new_song(name, genre) 
        #given a name and genre, creates a new song associated with that artist
        Song.new(name, self, genre)
    end

    def genres
        #has many genres, through songs
        songs.map do |song| #this maps through the already existing method of songs that has selected all song objects for us
            song.genre #returns the song and genre together 
        end
    end


end