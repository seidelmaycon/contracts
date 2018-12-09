# frozen_string_literal: true

{ 'Vodafone': [{ name: 'Internet' },
               { name: 'DSL' },
               { name: 'Phone Mobile' },
               { name: 'Phone' }],
  'O2': [{ name: 'Internet' },
         { name: 'DSL' }],
  'Vattenfall': [{ name: 'Internet' },
                 { name: 'Electricity' },
                 { name: 'Gas' }] }.each do |vendor, categories|
  Vendor.create!(name: vendor.to_s, categories_attributes: categories)
end
