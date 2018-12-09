# frozen_string_literal: true

class Contract < ApplicationRecord
  belongs_to :vendor
  belongs_to :category
  belongs_to :user

  validates :costs, :ends_on, presence: true
end
