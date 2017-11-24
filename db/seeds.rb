# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

category_list = [
  'Woodshop',
  'Metalshop',
  'Hotshop',
  'Lasers',
  'Soft Shop',
  'Autobay',
  'Electronics',
  'Hardshop',
  'Computers',
  'Software',
  'Misc'
]

category_list.each do |name|
  Category.create(name: name)
end

woodshop_equipment = [
     'Shopbot (Desk)',
     'Shopbot Buddy',
     'Shopbot Alpha',
     'Shopbot Any',
     'Planer',
     'Joiner',
     'Table Router',
     'Table Saw',
     'Angular Saw',
     'Wood Lathe',
     'Panel Saw',
     'Oscillating Sander'
]

woodshop_id = Category.find_by_name('Woodshop').id
woodshop_equipment.each do |name|
  Equipment.create!(category_id: woodshop_id, name: name)
end

metalshop_equipment = [
       'Plasma Cutter',
       'Tormach CNC Mill',
       'Manual Mill',
       'Metal Lathe'
]

metalshop_id = Category.find_by_name('Metalshop').id
metalshop_equipment.each do |name|
  Equipment.create!(category_id: metalshop_id, name: name)
end

hotshop_equipment = [
     'TIG Welding',
     'MIG Welding',
     'Arc Welding',
     'Oxy-Acetalyne'
]

hotshop_id = Category.find_by_name('Hotshop').id
hotshop_equipment.each do |name|
  Equipment.create!(category_id: hotshop_id, name: name)
end

laser_equipment = [
      'ULS',
      'Epilog',
      'Trotec',
      'Misc'
]

laser_id = Category.find_by_name('Lasers').id
laser_equipment.each do |name|
  Equipment.create!(category_id: laser_id, name: name)
end

softshop_equipment = [
  'Walking Foot Industrial Sewing Machine',
  'CNC Embroiderer',
  'Vinly Cutter'
]

softshop_id = Category.find_by_name('Soft Shop').id
softshop_equipment.each do |name|
  Equipment.create!(category_id: softshop_id, name: name)
end

autobay_equipment = [
  'Auto Lift'
]

autobay_id = Category.find_by_name('Autobay').id
autobay_equipment.each do |name|
  Equipment.create!(category_id: autobay_id, name: name)
end

electronics_equipment = [
      'Othermill',
      'Ossiliscope, digital',
      'Ossiliscope, analog',
      'myDaq'
]

electronics_id = Category.find_by_name('Electronics').id
electronics_equipment.each do |name|
  Equipment.create!(category_id: electronics_id, name: name)
end


hardshop_equipment = [
    'Injection Molder',
    'Powder Coating Booth',
    'Vacuum Former',
    'Waterjet'
]

hardshop_id = Category.find_by_name('Hardshop').id
hardshop_equipment.each do |name|
  Equipment.create!(category_id: hardshop_id, name: name)
end

software_equipment = [
   'Adobe Illustrator',
   'CorelDraw',
   'VCarve',
   'Adobe Photoshop'
]

software_id = Category.find_by_name('Software').id
software_equipment.each do |name|
  Equipment.create!(category_id: software_id, name: name)
end

misc_equipment = [
  'Bin Wall',
  'Address For Deliveries',
  'Coffee',
  'Popcorn',
  'Compressed Air System',
  'Work Tables',
  'Access to other members'
]

misc_id = Category.find_by_name('Misc').id
misc_equipment.each do |name|
  Equipment.create!(category_id: misc_id, name: name)
end
