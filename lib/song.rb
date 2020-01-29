
class Song

    attr_accessor :name, :artist, :genre

    @@artists = []
    @@count = 0
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        # if !@@artists.include?(artist)
            @@artists << artist
        # end
        # if !@@genres.include?(genre)
            @@genres << genre
        # end
        @@count += 1
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
        mymap = {}
        @@genres.each do |genre|
            if mymap.include?(genre)
                mymap[genre] += 1
            else
                mymap[genre] = 1
            end
        end
        mymap
    end

    def self.artist_count
        mymap = {}
        @@artists.each do |artist|
            if mymap.include?(artist)
                mymap[artist] += 1
            else
                mymap[artist] = 1
            end
        end
        mymap
    end
end