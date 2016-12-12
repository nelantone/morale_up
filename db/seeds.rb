# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts 'starting import CSV'
CSV.foreach('lib/seeds/sample_quotes.csv', col_sep: ';', return_headers: false ) do |row|
  Quote.create({quote: row[0], author: row[1], genre: row[2]})
end

puts "There are now #{Quote.count} rows in the quotes table"