require 'open-uri'
Cocktail.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

mojito = Cocktail.new(name: "Mojito")
mojito_file = URI.open('https://www.tasteofhome.com/wp-content/uploads/2018/01/Mojito_EXPS_FT19_37188_F_0814_1-1.jpg')
mojito.photo.attach(io: mojito_file, filename: 'mojito.png', content_type: 'image/png')
mojito.save!

bloody_marry = Cocktail.new(name: "Bloody Marry")
bloody_marry_file = URI.open('https://static.vinepair.com/wp-content/uploads/2018/03/Bloody-Mary-Recipe-card.jpg')
bloody_marry.photo.attach(io: bloody_marry_file, filename: 'bloody_marry.png', content_type: 'image/png')
bloody_marry.save!

pastis = Cocktail.new(name: "Pastis")
pastis_file = URI.open('https://www.lesvintrepides.com/wp-content/uploads/2019/05/pastis-2.jpg')
pastis.photo.attach(io: pastis_file, filename: 'pastis.png', content_type: 'image/png')
pastis.save!

Dose.create(description: "8oz", ingredient_id: 1, cocktail_id: 1)
Dose.create(description: "8oz", ingredient_id: 2, cocktail_id: 2)
Dose.create(description: "8oz", ingredient_id: 3, cocktail_id: 3)
