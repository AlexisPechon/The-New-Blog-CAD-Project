require 'singleton'

class SingletonDP
    include Singleton

    def load_config(filename)
		  puts "loading file #{filename}..."
	  end

end

# ### driver ###
# # create an instance (the only one!) of the AppConfig by using the method instance of the Singleton
# conf1 = Articles.instance
# conf1.load_config("config.txt")

# # calling again the instance method will not create a new object, instead will return the existing object/instance
# conf2 = Articles.instance

# puts "singleton demo"
# puts "is conf1 the same instance as conf2 #{conf1.equal?(conf2) }\n\n"


# # we cannot use directly new to create objects when implementing the singleton pattern
# conf3 = Articles.new rescue(puts $!) 