# Add your code here

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
  puts "I accept the following commands: \n"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.strip
  songs.each {|n| 
    if user_song == n
      return puts "#{user_song}"
    end}
  if user_song.to_i > 0 && user_song.to_i < 10
    return puts "#{songs[user_song.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  counter = 0
  while counter < songs.length do
    puts "#{counter + 1}. " + songs[counter] 
    counter += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  com = ""
  while com != "exit" do
    com = gets.strip
    
    if com == "list"
      list(songs)
    elsif com == "play"
      play(songs)
    elsif com == "help"
      help
    end
  end
  exit_jukebox
end