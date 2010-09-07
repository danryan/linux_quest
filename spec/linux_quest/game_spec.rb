require 'spec_helper'

module LinuxQuest
  describe Game do
    describe "#start" do
      let(:output) { double('output').as_null_object }
      let(:game) { Game.new(output) }
      
      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to LinuxQuest!')
        game.start
      end
      
      it "prompts for a name" do
        output.should_receive(:puts).with('Enter your name:')
        game.start
      end
    end
  end
end