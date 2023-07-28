require 'my_logger'

class ObserverDP < ActiveRecord::Observer

    #This file contains the code and logic that is necessary to implement
    #the Observer Design Pattern into my Project.

    def initialize
        @log = File.open("logupdate.txt", "a")
        #open or create a file in append moode
    end

    def after_update(record)
        #Observes the changes that were made when an entry has been modified by the user
        @logger = MyLogger.instance
        @logger.logInfo("Observer Design Pattern Example")
        @logger.logInfo("The gaming article of #{record.name} has been updated")
    end
end