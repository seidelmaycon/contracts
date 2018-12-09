# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :vendor
  has_many :contracts

  def to_s
    name
  end
end
