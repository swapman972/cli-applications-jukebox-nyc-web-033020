# Add your code here

require "pry"

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
   #   binding.pry
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
  #  binding.pry
    puts "#{counter + 1}. " + songs[counter] 
    counter += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  com = gets.strip
  # binding.pry
  while com != "exit" do
    if com == "list"
   #   binding.pry
      list(songs)
      com = gets.strip
    elsif com == "play"
   # binding.pry
      play(songs)
      com = gets.strip
    elsif com == "help"
   # binding.pry
      help
      com = gets.strip
    end
  end
  exit_jukebox
end