class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@count += 1
        @@artists.push artist
        @@genres.push genre
    end

    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        self.generate_hash @@artists
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        self.generate_hash @@genres
    end

    private
    def self.generate_hash(arr)
        hash = {}
        arr.each do |e|
            if !hash.has_key? e
                hash[e] = 0
            end
            hash[e] += 1
        end
        hash
    end
end