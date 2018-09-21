# frozen_string_literal: true
require 'faker'
10.times do
  User.create(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Twitter.screen_name
  )
end
