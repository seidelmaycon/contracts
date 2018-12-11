# frozen_string_literal: true

class Contract < ApplicationRecord
  belongs_to :vendor
  belongs_to :category
  belongs_to :user

  validates :costs, :ends_on, presence: true
  validates :costs, numericality: { greater_than: 0 }
  validate :validate_ends_on

  private

  def validate_ends_on
    return errors.add(:ends_on, 'is invalid') unless ends_on.present?

    errors.add(:ends_on, "can't be in the past") unless ends_on.future?
  end
end
