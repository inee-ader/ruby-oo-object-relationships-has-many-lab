

class Artist

    def self.song_count
        Song.all.count
    end

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do |song| #song object
            song.artist == self
        end
    end

    def add_song(song) #song object
        song.artist = self
    end

    def add_song_by_name(song_name) #song name
        song_name = Song.new(song_name)
        song_name.artist = self
    end




end