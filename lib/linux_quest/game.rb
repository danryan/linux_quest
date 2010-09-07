module LinuxQuest
  class Game
    def initialize(output)
      @output = output
    end
    
    def start
      @output.puts 'Welcome to LinuxQuest!'
      @output.puts 'Enter your name:'
    end
  end
end