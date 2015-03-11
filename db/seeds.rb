# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




r2 = Role.new
r2.nome = 'inscrito'
r2.save

r = Role.new
r.nome = 'admin'
r.save

user = User.new
user.nome = "Admin"
user.role_id = 2
user.email = "admin@mail.com"
user.password = "12345678"
user.password_confirmation = "12345678"
user.periodo = "Admin"
user.curso = "Admin"
user.matricula = "Admin"
user.save
