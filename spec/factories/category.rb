# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    vendor
    name { 'Internet' }
  end
end
