require 'pry'

class User
    attr_reader :views
    attr_writer :ssn
    attr_accessor :name, :age, :nickname 
    @@all = []

    def initialize(name, age, ssn, nickname=nil)
        @name = name
        @age = age
        @ssn = ssn
        @nickname = nickname
        User.all << self 
        @views = 0
    end

    def self.all 
        @@all
    end

    def view_profile
        puts "Your name is #{self.name}"
        puts "Your age is #{self.age}"
        puts "Your nickname is #{self.nickname}"
        increment_views
    end 

    private
   
    def increment_views
        @views += 1
    end
end