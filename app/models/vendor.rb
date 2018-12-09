# frozen_string_literal: true

class Vendor < ApplicationRecord
  has_many :categories
  has_many :contracts

  accepts_nested_attributes_for :categories

  def to_s
    name
  end
end
