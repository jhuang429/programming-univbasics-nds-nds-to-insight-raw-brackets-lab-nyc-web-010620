$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# pp directors_database

def directors_totals(nds)
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
