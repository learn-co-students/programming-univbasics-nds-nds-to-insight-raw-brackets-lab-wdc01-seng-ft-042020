$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

#pp directors_database[0][:movies][0][:worldwide_gross] #this is how to get the gross of one film

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  require 'pp'
  #nds, the input, is an Array of Hashes.
  nds_index = 0
  result = {
  }
  
  while nds_index < nds.length do
    dir_gross = 0
    director_name = nds[nds_index][:name] #string
    filmography = nds[nds_index][:movies] # array of hashes 
    film_index = 0
      while film_index < filmography.length do
        dir_gross += filmography[film_index][:worldwide_gross] #int
        film_index += 1
      end
    result[director_name] = dir_gross
    nds_index += 1
  end

  return result
end

puts directors_totals(directors_database)

