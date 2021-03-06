# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vendor, type: :model do
  it { is_expected.to have_many(:categories) }
  it { is_expected.to have_many(:contracts) }
end
