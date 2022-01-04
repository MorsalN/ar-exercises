require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# ONE WAY
puts Store.sum(:annual_revenue)

puts Store.average(:annual_revenue)

puts Store.where("annual_revenue > 1000000").count

#ANOTHER WAY
@total_revenue = Store.where("annual_revenue > 0")
sum = 0
@total_revenue.each do |total|
  sum += total.annual_revenue
end 

puts "The total revenue is $#{sum}."
puts "The average annual revenue is $#{sum/6}"