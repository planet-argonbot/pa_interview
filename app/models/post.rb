# frozen_string_literal: true
class Post < ApplicationRecord
  has_one :user
end
