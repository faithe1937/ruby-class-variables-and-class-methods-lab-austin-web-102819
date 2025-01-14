class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.reduce({}) do |genre_count, genre|
            if !genre_count[genre]
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end
            genre_count
        end
    end

    def self.artist_count
        @@artists.reduce({}) do |artist_count, artist|
            if !artist_count[artist]
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end
            artist_count
        end
    end
end