require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(@artist)
        @@genres.push(@genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        oil = {}
        @@genres.each do |i|
            # binding.pry
            if !oil[i]
                oil[i] = 1
            else
                oil[i] += 1
            end
        end
        oil
    end

    def self.artist_count
        virtuoso = {}
        @@artists.each do |i|
            # binding.pry
            if !virtuoso[i]
                virtuoso[i] = 1
            else
                virtuoso[i] += 1
            end
        end
        virtuoso
    end


end

