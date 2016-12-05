# frozen_string_literal: true
class User < ApplicationRecord
  ROLES = ['admin', 'manager', 'editor', 'author']
  has_many :posts
  validates :role, inclusion: { in: ROLES }, presence: true
end
