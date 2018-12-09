# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to belong_to(:vendor) }
  it { is_expected.to have_many(:contracts) }
end
