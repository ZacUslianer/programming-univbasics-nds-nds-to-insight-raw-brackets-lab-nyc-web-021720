$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  pp nds
  director_index = 0
  result = {}
  while director_index < nds.count do
    total = 0 
    director_name = nds[director_index][:name]
    movie_index = 0 
    while movie_index < nds[director_index][:movies].count do 
      total += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end 
    result[director_name] = total 
    director_index += 1 
  end
   result
end
