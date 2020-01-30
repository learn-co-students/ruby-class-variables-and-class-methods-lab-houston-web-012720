class Song 
  @@count = 0
  @@artists = [ ]
  @@genres = [ ]
  attr_accessor :name, :artist , :genre
  def initialize(name, artist , genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist 
    @@genres << genre
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
    newhash = {}
    @@genres.each do |genre|
     if newhash[genre] 
       newhash[genre]+=1 
     else newhash[genre] = 1
     end
    end 
    newhash
  end
  def self.artist_count 
    newhash = {}
    @@artists.each do |artist|
      if newhash[artist]
        newhash[artist] +=1 
      else 
        newhash[artist] =1
    end
  end
  newhash
  end
  
end
