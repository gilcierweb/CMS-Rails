# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Auth::Role.destroy_all

auth_roles_list = [
    ["admin", "Administrador", "Admintrador Principal"],
    ["moderator", "Moderador", "Moderador tem alguns privilégios a menos que admin"],
    ["editor", "Editor", "Editor tem alguns privilégios a menos que admin e moderator"],
    ["author", "Autor", "O autor tem os privilégios de criar, editar, ver e deletar o sue proprio post"],
    ["guest", "Convidado", "Usuarios do sistema somente com privilégio de ver os conteudos no frontend"],
]

auth_roles_list.each do |name, title, description|
  Auth::Role.create(:name => name, :title => title, :description => description)
end
