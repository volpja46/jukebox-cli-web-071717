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
   puts  "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
    index = 1
        songs.each do |song|
            puts "#{index}. #{song}"
            index += 1
        end
    end

def play(songs)
     puts "Please enter a song name or number"
    user_input = gets.chomp
    songs.each_with_index do |song, index|
            if user_input.to_i == (index+1) || user_input == song
             puts "Playing #{song}"
            break
             else
             puts "Invalid input, please try again"
            break
           end
    
     end
end


def exit_jukebox
    puts "Goodbye"
end


def run(songs)
      help
     puts "Please enter a command:"
      user_input = gets.chomp
      unless user_input == "exit"
        case user_input
          when "help"
            help
            when "list"
               list(songs)
              when "play"
                   play(songs)
          else
         puts "Invalid input"
            end
        run(songs)
        end
        exit_jukebox
        end
       





