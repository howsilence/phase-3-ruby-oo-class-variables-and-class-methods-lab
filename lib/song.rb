class Song


    @@artists = []
    @@genres = []
    @@count = 0

    # gets and sets name, arist and genre
    attr_accessor :name, :artist, :genre


    # "on build" cookie cutter
    def initialize(name, artist, genre)

        @name = name,
        @artist = artist,
        @genre = genre,
        @@artists << artist,
        @@genres << genre,
        @@count +=1

    end

    # defines a .count method that returns the total number of songs created
    def self.count
        @@count
    end

    # defines a count for the genres then tallies them
    def self.genres
        @@genres.uniq
        # .each {|genre| genre.tally}
    end
    
    def self.genre_count
        @@genres.tally
    end

    def self.artists
        @@artists.uniq
        
    end

    def self.artist_count
        @@artists.tally
    end
        

end