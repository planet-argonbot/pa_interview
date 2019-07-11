# frozen_string_literal: true
35.times do
  User.create(
    email: FFaker::Internet.email,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
  )
end
