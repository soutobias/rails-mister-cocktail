# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"

Dose.destroy_all
Ingredient.destroy_all
Review.destroy_all
Cocktail.destroy_all


url = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(url)
ingredients["drinks"].each do |ingredient|
  puts ingredient["strIngredient1"]
  Ingredient.create(
      name: ingredient["strIngredient1"]
    )
end


file = URI.open('https://super.abril.com.br/wp-content/uploads/2017/12/caipirinha.png?quality=70&strip=info&resize=680,453')
cocktail = Cocktail.new(
  name: "Caipirinha"
)
cocktail.photo.attach(io: file, filename: "1.jpg", content_type: 'image/jpg')
cocktail.save!

file = URI.open('https://www.isabeleats.com/wp-content/uploads/2017/12/mexican-bloody-maria-small-1-650x973.jpg')
cocktail = Cocktail.new(
  name: "Blood Mary"
)
cocktail.photo.attach(io: file, filename: "2.jpg", content_type: 'image/jpg')
cocktail.save!


file = URI.open('https://www.recipegirl.com/wp-content/uploads/2007/02/Mock-Margaritas-1.jpg')
cocktail = Cocktail.new(
  name: "Margarita"
)
cocktail.photo.attach(io: file, filename: "3.jpg", content_type: 'image/jpg')
cocktail.save!


file = URI.open('https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/virgin_mojito_18243_16x9.jpg')
cocktail = Cocktail.new(
  name: "Mojito"
)
cocktail.photo.attach(io: file, filename: "4.jpg", content_type: 'image/jpg')
cocktail.save!

file = URI.open('https://carretaoipanema.com.br/wp-content/uploads/2018/04/Caipifruta.jpg')
cocktail = Cocktail.new(
  name: "Caipifruta"
)
cocktail.photo.attach(io: file, filename: "5.jpg", content_type: 'image/jpg')
cocktail.save!

file = URI.open('https://blog.clienteconfianca.com.br/wp-content/uploads/2020/02/capa-blog-4.jpg')
cocktail = Cocktail.new(
  name: "Gin Tônica"
)
cocktail.photo.attach(io: file, filename: "6.jpg", content_type: 'image/jpg')
cocktail.save!


file = URI.open('https://www.anamariabrogui.com.br/assets/uploads/receitas/fotos/usuario-1714-9963a14027e9d974217c1e051188eedc.jpg')
cocktail = Cocktail.new(
  name: "Sex on the Beach"
)
cocktail.photo.attach(io: file, filename: "7.jpg", content_type: 'image/jpg')
cocktail.save!

ingredients = Ingredient.all

cocktails = Cocktail.all

descriptions = ["1 spoon", "2 cups", "1 dose", "3 spoons", "1 spoon", "1 cup", "2 doses"]

descriptions1 = ["Best drink", "Perfect", "Very good", "Good", "Normal", "Terrible"]
grades1 = [5, 5, 4, 4, 3, 2]

cocktails.each do |cocktail|
  3.times do
    Dose.create(
      ingredient_id: ingredients.sample.id,
      cocktail_id: cocktail.id,
      description: descriptions.sample
    )
    Review.create(
      description: descriptions1.sample,
      rating: grades1.sample,
      cocktail_id: cocktail.id
    )
  end
end
