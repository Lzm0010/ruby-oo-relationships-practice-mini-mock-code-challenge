require 'pry'
require_relative './book'
require_relative './author'

ernie = Author.new("Ernest Hemmingway")
alex = Author.new("Alexander Dumas")
ernie.write_book("Old man and the sea", 3000)
ernie.write_book("For whom the bell tolls", 4000)
alex.write_book("3 Musketeers", 5000)
alex.write_book("The count of Monte Cristo", 35000)

binding.pry


