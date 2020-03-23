$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def nice 
  pp directors_database
end

def directors_totals(nds)
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
  outer_index = 0
  while outer_index < directors_database.length do
  inner_index = 0
  total = 0
  name = directors_database[outer_index][:name]
    while inner_index < directors_database[outer_index][:movies].length do
      single_gross = directors_database[outer_index][:movies][inner_index][:worldwide_gross]
      total += single_gross
      inner_index += 1
    end
  result[name] = total  
  outer_index += 1
  end
  result
end
