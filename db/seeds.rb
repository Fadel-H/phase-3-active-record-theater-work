puts "🌱 Seeding ..."

role1 = Role.create(character_name: "Spoderman")
role2 = Role.create(character_name: "Goofy")

Audition.create(actor: "Tim", location: "The streets", phone: 5555555555, hired: 0, role_id: role1.id)
Audition.create(actor: "Tam", location: "Poland", phone: 5501234567, hired: 1, role_id: role1.id)

Audition.create(actor: "Chris", location: "South America", phone: 1234567890, hired: 1, role_id: role2.id)
Audition.create(actor: "Lewas", location: "Earth", phone: 5002001200, hired: 0, role_id: role2.id)

puts "✅ Done seeding!"