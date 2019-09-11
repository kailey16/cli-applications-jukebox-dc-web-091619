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
  if (1..9).to_a.include?(song_name.to_i)
    puts "Playing #{songs[song_name.to_i - 1]}"
  elsif songs.include?(song_name)
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

def run(songs)
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end