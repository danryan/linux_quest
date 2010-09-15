require 'spec_helper'

module LinuxQuest
  describe Game, "#start" do

    let(:input) { double('stdin') }
    let(:output) { StringIO.new.as_null_object }
    let(:game) { Game.new }
    
    before do
      game.input = input
      game.output = output
    end 
    
    it "sends a welcome message" do
      output.should_receive(:puts).with('Welcome to LinuxQuest!')
      output.should_receive(:puts).with('Enter your name:')
      game.start
    end
    
    it "sets and returns the player's name" do
      input.should_receive(:gets).and_return('Dan')
      # input.string.should =~ /Dan/
      game.player_name = game.prompt_player_for_input
      game.player_name.should == "Dan"
      # @player_name = game.prompt_player_for_input
      # output.string.should =~ /Dan/
      # player_name.should == "Dan"
    end
    # 
    # it "requests and sets the player's name" do
    #   @game.input.should_receive(:gets).with("Dan").and_return("Get ready to play LinuxQuest, Dan!")
    #   @player_name.should == "Dan"
    # end
  end
end