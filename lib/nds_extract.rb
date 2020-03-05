$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

nds = directors_database

#pp nds

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
  #nil

  directors_index = 0
  while directors_index < nds.length do 
    directors_earnings = 0
    movies_index = 0
    while movies_index < nds[directors_index][:movies].length do 
      directors_earnings += nds[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
    end
    directorName = nds[directors_index][:name]
    result[directorName] = directors_earnings

    directors_index += 1
  end

  result
end

