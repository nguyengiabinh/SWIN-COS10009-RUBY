
# Task 6.1 T - use the code from last week's tasks to complete this:
# eg: 5.1T, 5.2T
require './inputs_functions'

module Genre
    POP, CLASSIC, JAZZ, ROCK = *1..4
end
  
$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']
  
class Album
  # NB: you will need to add tracks to the following and the initialize()
      attr_accessor :title, :artist, :genre
  
  # complete the missing code:
   def initialize (title, artist, genre)
          # insert lines here
          @title = title
          @artist = artist
          @genre = genre
    end
end
  
class Track
 attr_accessor :name, :location
  
      def initialize (name, location)
          @name = name
          @location = location
      end
end
  
  # Reads in and returns a single track from the given file
  
def read_track(music_file)
      # fill in the missing code
      track = Track.new(music_file.gets, music_file.gets)
end
  
  # Returns an array of tracks read from the given file
  
def read_tracks(music_file)
      
      count = music_file.gets().to_i()
        tracks = Array.new()
  
    # Put a while loop here which increments an index to read the tracks
    index = 0
    while (index < count)
        track = read_track(music_file)
        tracks << track
        index += 1
    end
  
        track = read_track(music_file)
        tracks << track
  
      return tracks
end
  
  # Takes an array of tracks and prints them to the terminal
  
def print_tracks(tracks)
      # print all the tracks use: tracks[x] to access each track.
      count = tracks.length
      index = 0
      while (index < count)
        puts(tracks[index].name)
        puts(tracks[index].location)
        index += 1
      end
  end


  def search_for_track_name(tracks, search_name)
    index = 0
    found_index = -1
    while (index < tracks.length)
        if tracks[index] == search_name
            found_index = index 
        end
        index += 1
    end
    return found_index
 end
    
     search_name = read_string("Enter the track name you wish to find: ")
      index = search_for_track_name(tracks, search_name)
      if index > -1
      puts("Found" + track[index].name)
      puts("at" + index.to_s)
      else
      puts("Entry not found")
      
    
end
  
  # Reads in and returns a single album from the given file, with all its tracks
  
  
  # Reads in an album from a file and then print the album to the terminal
  
  def main()
      music_file = File.new("album.txt", "r")
      album = read_album(music_file)
      music_file.close()
      print_album(album)
      print_tracks(track)
      
  end
  
  main()