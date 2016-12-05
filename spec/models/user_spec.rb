# frozen_string_literal: true
require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    context 'not acceptable role input' do
      it 'is not valid' do
        user = User.new(email: 'test@test.com', role: 'foo')

        expect(user).not_to be_valid
      end
    end
    context 'acceptable role input' do
      it 'is valid input' do
        user = User.new(role: 'admin')
        # factory stuff goes here

        expect(user).to be_valid
      end
    end
  end
end
