# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence :email do |n| "john.doe+#{n}@gmail.com" end
    full_name { 'John Doe' }
    password { '12345678' }
  end
end
