require 'pry'
require_relative './user.rb'
def run
    puts "Welcome! Do you want to login or signup?"
    action = gets.chomp 

    if action == "signup"
        puts "What is your name?"
        name = gets.chomp 
        puts "What is your age?"
        age = gets.chomp 
        puts "What is your social security number?"
        ssn = gets.chomp 
        puts "What is your nickname?"
        nickname = gets.chomp 
        user = User.new(name, age, ssn, nickname)
        run 
    elsif action == "login"
        puts "What is your name?"
        name = gets.chomp 
        user = User.all.find {|user| user.name == name}
        puts "Do you want to view your profile? (y/n)"
        response = gets.chomp
        if  response == "y"
        user.view_profile 
        end
    end 
end