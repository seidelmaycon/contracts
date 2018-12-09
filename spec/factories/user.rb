# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'john.doe@gmail.com' }
    full_name { 'John Doe' }
    password { '12345678' }
  end
end
