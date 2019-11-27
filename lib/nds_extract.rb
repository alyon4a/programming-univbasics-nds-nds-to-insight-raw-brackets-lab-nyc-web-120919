$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_db = directors_database
  hash_result = Hash.new()
  
  dir_iterator = 0
  while dir_iterator < directors_db.size do
    director = directors_db[dir_iterator]
    
    total_grosses = 0 
    movies_array = director[:movies]
    movies_iterator = 0 
    
    while movies_iterator < movies_array.size do
      total_grosses += movies_array[movies_iterator][:worldwide_gross]
    end
    
    hash_result[director[:name]] => total_grosses
  end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  return hash_result
  
end
