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
  'Hotshop -> Hotshop (welding)',
  'Plasticshop',
  'Autobay -> Autoshop',
  'Lasers',
  'Electronics',
  'Soft shop -> Softshop (textiles & printers)',
  'Misc -> General Facilities'
]

category_list.each do |name|
  Category.create(name: name)
end

woodshop_equipment = [
  'CNC Wood Lathe',
  'Table Saw -> Table Saw, Sawstop',
  'Belt Sander',
  'Disk Sander',
  'Drum Sander',
  'Jig Saw',
  'Dust Collectors',
  'Band Saw',
  'Drill Press, Wood',
  'Nailgun'
]

woodshop_id = Category.find_by_name('Woodshop').id
woodshop_equipment.each do |name|
  Equipment.create!(category_id: woodshop_id, name: name)
end

metalshop_equipment = [
  'Anvil',
  '10-ton Press',
  'Powdercoating Booth',
  'Powdercoating Oven',
  'Crucible',
  'Tormach 4th Axis',
  'Metal Crimper',
  'Granite Surface Plate',
  'Drill Press, Metal'
]

metalshop_id = Category.find_by_name('Metalshop').id
metalshop_equipment.each do |name|
  Equipment.create!(category_id: metalshop_id, name: name)
end

plasticshop_equipment = [
      'Vaccum Former',
      'Injection Molder',
      'Strip Heater',
      'Pressure Pot',
      'Resins & Chem Supplies'
]

plasticshop_id = Category.find_by_name('Plasticshop').id
plasticshop_equipment.each do |name|
  Equipment.create!(category_id: plasticshop_id, name: name)
end


laser_equipment = [
  'Fiber Laser',
  'Laser Cutter, 45 Watt Epilog',
  'Laser Cutter, 60 Watt Epilog',
  'Laser Cutter, 120 Watt Epilog',
  'Rotary Attachment, Epilog',
  'Laser Cutter, 60 Watt ULS ( Universal Laser Systems )',
  'Rotary Attachment, Universal',
  'Trotec -> Laser Cutter, Trotec',
  'Laser Cutter, Any Epilog',
  'Misc -> Any Laser'
]

laser_id = Category.find_by_name('Lasers').id
laser_equipment.each do |name|
  Equipment.create!(category_id: laser_id, name: name)
end

softshop_equipment = [
  'Soft shop -> Softshop (textiles & printers)',
  '3D Printer, Formlabs Form 2 SLA',
  '3D Printer, Makerbot Replicator 2',
  '3D Printer, Any',
  'Printer, Large High Quality Print',
  'Printer, Any',
  'Sewing Machine, Brother',
  'Sewing Machine, Any',
  'Heat Press'
]

softshop_id = Category.find_by_name('Soft shop -> Softshop (textiles & printers)').id
softshop_equipment.each do |name|
  Equipment.create!(category_id: softshop_id, name: name)
end

autobay_equipment = [
  'Autobay'
]

autobay_id = Category.find_by_name('Autobay -> Autoshop').id
autobay_equipment.each do |name|
  Equipment.create!(category_id: autobay_id, name: name)
end

electronics_equipment = [
  'Power Supply',
  'Soldering Supplies'
]

electronics_id = Category.find_by_name('Electronics').id
electronics_equipment.each do |name|
  Equipment.create!(category_id: electronics_id, name: name)
end



misc_equipment = [
  'Waterjet',
  'Vices',
  'Digital Calipers',
  'Drill Bits',
  'Refrigerator Access',
  'A Parking Spot',
  'Public Transit Access, Near Station',
  'Public Transit Access, Walking Access',
  'Other members, inspiration',
  'Other members, jobs',
  'Other members, social'
]

misc_id = Category.find_by_name('Misc -> General Facilities').id
misc_equipment.each do |name|
  Equipment.create!(category_id: misc_id, name: name)
end
