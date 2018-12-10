# frozen_string_literal: true

class Contract < ApplicationRecord
  belongs_to :vendor
  belongs_to :category
  belongs_to :user

  validates :costs, :ends_on, presence: true

  def validate_ends_on(contract)
    unless contract.ends_on < Time.now
      contract.errors[:ends_on] << "Ends On can't be in the past"
    end
  end
end
