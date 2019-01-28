# frozen_string_literal: true
5.times { User.create(name: FFaker::Name.name, email: FFaker::Internet.email) }
