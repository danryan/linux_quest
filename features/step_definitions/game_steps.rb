Given /^I am not yet playing$/ do
  @game = LinuxQuest::Game.new
end

When /^I enter the name "(.*)"$/ do |name|
  @game.profile = @profile
  # @game.profile.name.should ~= /Dan/
end
# 
# 
# 
# class Output
#   def messages
#     @message ||= []
#   end
#   
#   def puts(message)
#     messages << message
#   end
# end
# 
# def output
#   @output ||= Output.new
# end
# 
