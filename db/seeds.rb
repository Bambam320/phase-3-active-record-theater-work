Role.create(character_name: "Gibbs")
Role.create(character_name: "Abby")
Role.create(character_name: "Tony")
Role.create(character_name: "Ziva")
Role.create(character_name: "McGee")
5.times do
Audition.create(
  actor: "Mark Maron", 
  location: "Florida", 
  phone: 9834563789,
  hired: false,
  role_id: 1
)
Audition.create(
  actor: "Pauly Perrette", 
  location: "Virginia", 
  phone: 7853452901,
  hired: false,
  role_id: 2
)
Audition.create(
  actor: "David McCallum", 
  location: "New York", 
  phone: 2327468934,
  hired: false,
  role_id: 3
)
Audition.create(
  actor: "Michael Weatherly", 
  location: "California", 
  phone: 9057483490,
  hired: true,
  role_id: 4
)
Audition.create(
  actor: "Cote de Pablo", 
  location: "Louisiana", 
  phone: 6782138904,
  hired: true,
  role_id: 5
)
end