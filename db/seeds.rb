# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

santander = Bank.create(name: 'Banco Santander')
chile = Bank.create(name: 'Banco de Chile')
['Vitacura 4325 - Vitacura', 'Av. Presidente Riesco 5561 Of. 203 P.2 - Las Condes', 'Agustinas N° 1070 P. 6 Of. 52 Stgo. Centro'].each do |bs|
  santander.bank_subsidiaries.create(address: bs)
end
['Av. Presidente Riesco 5711 L/1,LAS CONDES', 'Av. Nueva Los Leones 017,PROVIDENCIA'].each do |bs|
  chile.bank_subsidiaries.create(name: bs)
end