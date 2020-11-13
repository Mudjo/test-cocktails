require 'open-uri'
require 'json'

puts 'Delete all ingredient'

Ingredient.destroy_all

puts 'Creating all the ingredient'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(URI.open(url).read)

ingredients['drinks'].each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end

puts 'Ajout ecureuil'

Ingredient.create!(name: 'écureuil')

puts 'Finished !'
