require 'my_logger'

class ObserverDP < ActiveRecord::Observer

    def initialize
        @log = File.open("logupdate.txt", "a")
        #open or create a file in append moode
    end

    def after_update(record)
        @logger = MyLogger.instance
        @logger.logInfo("Observer Design Pattern Example")
        @logger.logInfo("The gaming article of #{record.name} has been updated")
    end
end