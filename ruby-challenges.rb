# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']
letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't'
# letter_f = 'f'
# Expected output: ['tea', 'water', 'soda water']
# Set a variable of "result" that took the 'beverage array'
def filter_words(array, letter)
    # method set to take two arguments
    array.select{|item| item.include?(letter)}
    # .select creates a new array
end
puts filter_words(beverages_array, letter_o)
puts filter_words(beverages_array, letter_t)

# added in to verify method
# puts filter_words(beverages_array, letter_f)
# puts result << []

# -------------------2) Create a method that takes in an array of numbers and returns the sum of the numbers. Use the test variables provided.

nums_array1 = [42, 7, 27]
# Expected output: 76
nums_array2 = [25, 17, 47, 11]
# Expected output: 100
# I used the .sum method to add all the numbers of the array together.
p nums_array1.sum
p nums_array2.sum

# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'
class Bike
    attr_accessor :speed, :wheels, :speed
    def initialize(model)
        @model = model
        @wheels = 2
        @speed = 0
    end
    def bike_info
        "This is a #{@model} bike, it has #{@wheels} wheels, and a speed of #{@speed} mph."
    end
    def pedal_faster(num)
        @increase = num += 1
    end
    def brake(num)
        if @speed - 1 <= 0
            @speed = 0
        else
            @speed = num -= 2
        end
    end
end
puts my_bike = Bike.new("Trek")
my_bike.pedal_faster(4)

puts
# while current_speed <= 0

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

my_bike.pedal_faster(10)
my_bike.pedal_faster(18)
my_bike.brake(5)
my_bike.brake(25)


# learnacademy in ~/Desktop/week-5-assessment-DeonFranklin on branch main > ruby ruby-challenges.rb
# coffee
# tea
# juice
# water
# soda water
# 76
# 100
# This is a bike, it has 2 wheels, and a resting speed of 0 mph.