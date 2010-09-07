feature "Start game" do
  
  background do
    
  end
  
  scenario "start new game" do
    let
    game = LinuxQuest::game.new.start(output)
    game.start
    output.message.should include(message)
  end
end