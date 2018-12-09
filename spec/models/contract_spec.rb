# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contract, type: :model do
  it { is_expected.to belong_to(:vendor) }
  it { is_expected.to belong_to(:category) }
  it { is_expected.to belong_to(:user) }

  it { should validate_presence_of(:costs) }
  it { should validate_presence_of(:ends_on) }
end
