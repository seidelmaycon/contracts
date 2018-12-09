# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :full_name, :email, :password_digest, presence: true
  validates :password, length: { minimum: 8 }

  has_many :contracts

  def first_name
    full_name.split[0].titleize
  end
end
