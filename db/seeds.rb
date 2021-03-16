require 'faker'

20.times do
  Client.create!({
    user_id: 1,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    mobile_phone: Faker::Number.number(digits: 10)
  })
end

