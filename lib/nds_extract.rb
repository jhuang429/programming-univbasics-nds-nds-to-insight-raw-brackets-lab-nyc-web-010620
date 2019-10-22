$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  director_count = 0
  while director_count < nds.length do
    director = nds[director_count][:name]
    result[director] = 0
    movie_count = 0
    while movie_count < nds[director_count][:movies].length do
        result[director] += nds[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1
    end
    director_count += 1
  end
  result
end

puts directors_totals(directors_database)
