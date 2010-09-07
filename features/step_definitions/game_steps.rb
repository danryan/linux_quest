Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = LinuxQuest::Game.new(output)
  game.start
end

Then /^I should see "([^']*)"$/ do |message|
  output.messages.should include(message)
end

Then /^I should enter the name "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

class Output
  def messages
    @message ||= []
  end
  
  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

