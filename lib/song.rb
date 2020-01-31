class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
        @@count += 1
        @@all << self 
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
        # count = {}
        count = Hash.new(0)
        #Hash.new(x) will set the defual=t value for new values to be 0

        # @@genres.each do |genre|
        #     if count[genre]
        #         count[genre] += 1
        #     else 
        #         count[genre] = 1
        #     end
        # end
        # count
        @@genres.each do |genre|
            count[genre] += 1
        end
        count
    end

    def self.artist_count
        count = Hash.new(0)
        @@artists.each {|artist| count[artist] += 1}
        count
    end
end