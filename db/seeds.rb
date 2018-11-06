# frozen_string_literal: true
require 'faker'
35.times do
  User.create(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end
