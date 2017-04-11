require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#Sum of annual_revenue of all stores
puts Store.sum(:annual_revenue)

#Average annual_revenue of all stores
puts Store.sum(:annual_revenue) / Store.count

#Count of stores with annual_revenue > 100_000

puts Store.where("annual_revenue > 1000000").count