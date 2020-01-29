class Song 
    attr_accessor :name, :artist , :genre
    @@count = 0
    @@artist = []
    @@genre = []
    @@genre_count = Hash.new {|h,k| h[k] = 0}
    @@artist_count = Hash.new {|h,k| h[k] = 0}
    def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre
        @@count += 1
        @@artist.include?(@artist) ? @@artist : @@artist << @artist
    end
    def self.count 
        @@count
    end
    def self.artist
        @@artist
    end
    def self.genre
        @@genre.include?(@genre) ? @@genre : @@genre << @genre
    end
    def self.genre_count
        @@genre_count[@genre] += 1
    end
    def self.artist_count 
        @@artist_count[@artist] += 1
    end
end

