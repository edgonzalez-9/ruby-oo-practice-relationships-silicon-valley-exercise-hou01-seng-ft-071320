require 'pry'
class Startup
    attr_accessor :name, :domain 
    attr_reader :founder

    @@all = []
    
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self 
        
        # @@all << {
        #     :name => @name, 
        #     :founder => @founder, 
        #     :domain => @domain}  
    end

    def name 
        @name
    end

    def founder
        @founder
    end

    def domain
        @domain 
    end

    def pivot(new_name)
        @domain = new_name
    end

    def self.all
        @@all 
        
        # startup_list = []
        # @@all[index].find do |key, value|
        #     startup_list << @@all[index][name] 
        # end
        
        # binding.pry 
        # # @@all 
        # # # @@all.find do |index|
        # #     # binding.pry
        # #     @@all[index].find do |key, value|
        # #     @@all[index][key]
        # #     end
    end
    
    def self.find_by_founder(founder)
        @@all.find {|startup| founder == startup.founder}
    end
    
    def self.startup_domain
        @@all.collect {|startup| startup.domain}
    end
    
    nintendo = Startup.new("Nintendo", "Mario","nintendo.com")
    sony = Startup.new("Sony", "Kratos", "sony.com")
    
    binding.pry 
#pry is stupid
end


