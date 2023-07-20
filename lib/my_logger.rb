require 'singleton'
class MyLogger
    #This class contains the logic that is required to implement the Singleton Design Pattern
    #An example of this being used is found inside of the articles_controller.rb file
    include Singleton
    def initialize
        @log = File.open("loggame.txt", "a")
        #open or create a file in append moode
    end

    def  logInfo(information)
        @log.puts("---new item---")
        @log.puts(information) #info passed in as param will be printed to txt file
        @log.puts("---end of item---")
        @log.flush
    end
end