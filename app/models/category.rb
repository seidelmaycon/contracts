# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :vendor

  def to_s
    name
  end
end
