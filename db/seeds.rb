# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# -----Users-----
User.seed(:email) do |s|
  s.id = 1
  s.email = 'admin@example.com'
  s.password = 'admin'
  s.admin = true
end

#-----Presentations-----
Presentation.seed(:name) do |s|
  s.id = 1
  s.name = 'comprimido'
end

Presentation.seed(:name) do |s|
  s.id = 2
  s.name = 'capsula'
end

Presentation.seed(:name) do |s|
  s.id = 3
  s.name = 'jarabe'
end

Presentation.seed(:name) do |s|
  s.id = 4
  s.name = 'ampolla'
end

Presentation.seed(:name) do |s|
  s.id = 5
  s.name = 'comprimido recubierto'
end

Presentation.seed(:name) do |s|
  s.id = 6
  s.name = 'comprimido masticable'
end

Presentation.seed(:name) do |s|
  s.id = 7
  s.name = 'grageas'
end

Presentation.seed(:name) do |s|
  s.id = 8
  s.name = 'suspension'
end

Presentation.seed(:name) do |s|
  s.id = 9
  s.name = 'gotas'
end

Presentation.seed(:name) do |s|
  s.id = 10
  s.name = 'gel'
end

#-----Laboratories-----
Laboratory.seed(:name) do |s|
  s.id = 1
  s.name = 'Albus'
end

Laboratory.seed(:name) do |s|
  s.id = 2
  s.name = 'Alcos'
end

Laboratory.seed(:name) do |s|
  s.id = 3
  s.name = 'Bago'
end

Laboratory.seed(:name) do |s|
  s.id = 4
  s.name = 'Bayer'
end

Laboratory.seed(:name) do |s|
  s.id = 5
  s.name = 'Cofar'
end

Laboratory.seed(:name) do |s|
  s.id = 6
  s.name = 'Biosano'
end

Laboratory.seed(:name) do |s|
  s.id = 7
  s.name = 'Cimed'
end

Laboratory.seed(:name) do |s|
  s.id = 8
  s.name = 'Inti'
end

Laboratory.seed(:name) do |s|
  s.id = 9
  s.name = 'Vita'
end

Laboratory.seed(:name) do |s|
  s.id = 10
  s.name = 'Ifa'
end

Laboratory.seed(:name) do |s|
  s.id = 11
  s.name = 'Imfar'
end

Laboratory.seed(:name) do |s|
  s.id = 12
  s.name = 'Hanneman'
end