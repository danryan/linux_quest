module LinuxQuest
  class Game
    attr_accessor :input, :output, :player_name
    
    def initialize
      @input = $stdin
      @output = $stdout
      @player_name = nil
    end
    
    def start
      welcome
      player_name = prompt_player_for_input
      msg "Get ready to start playing, #{player_name}!"
    end
    
    def prompt_player_for_input
      user_input = input.gets.chomp
      user_input
    end
    
    def welcome
      msg 'Welcome to LinuxQuest!'
      msg 'Enter your name:'
    end
    # 
    # def profile
    #   @profile
    # end
    # 
    # def profile=(profile)
    #   @profile ||= profile
    # end
    
    def msg(message)
      output.puts message
    end
    
  end
end