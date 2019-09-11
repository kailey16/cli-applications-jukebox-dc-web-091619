songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list
  songs.each_with_index |song, i|
   puts "#{i+1}. song"
 end
end

def play
  puts "Please enter a song name or number:"
  song_name = gets.strip
  if song_name
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run 
  puts "Please enter a command:"
  command = gets.strip
  loop do 
   if command == "list"
     list
   if command == "play"
     play
   if command == "help"
     help
   end
   break if command == "exit"
    exit_jukebox
   end
  end
end