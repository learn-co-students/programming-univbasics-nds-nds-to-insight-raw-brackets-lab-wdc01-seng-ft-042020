$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
pp directors_database
 def directors_totals(nds)
hash = {}
total = 0 
row_index = 0 
while row_index < directors_database.length do 
  puts director_name = directors_database[row_index][:name]
  directors_movies = directors_database[row_index][:movies]
  column_index = 0 

  while column_index < directors_movies.length do 
   
    total += directors_movies[column_index][:worldwide_gross]
    column_index += 1 
  end 
  hash[director_name] = total
  total = 0 
  row_index += 1 
end
hash 
end 


 # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!