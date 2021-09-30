Role.destroy_all
Audition.destroy_all

10.times do
    Role.create(character_name: Faker::Fantasy::Tolkien.character)
end

10.times do
    Audition.create(actor: Faker::Movies::HarryPotter.character, location: Faker::Space.moon, phone: Faker::Number.number(digits: 10), hired: false, role_id: Role.all.sample.id)
end

puts "Seeding complete..."