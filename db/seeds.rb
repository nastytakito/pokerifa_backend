# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'poquerifa.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Pokedex.new
  t.name = row['nombre']
  t.dex_number = row['number']
  t.hp = row['hp']
  t.attack = row['attack']
  t.defense = row['defense']
  t.sp_attack = row['sp_attack']
  t.sp_defense = row['sp_defense']
  t.speed = row['speed']
  t.total = row['total']
  t.save
  puts "#{t.dex_number}, #{t.name} saved"
end
puts "There are now #{Pokedex.count} rows in the transactions table"