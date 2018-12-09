# frozen_string_literal: true

FactoryBot.define do
  factory :contract do
    user
    category
    vendor
    ends_on { Time.now + 1.week }
    costs { 100.0 }
  end
end
