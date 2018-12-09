# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }

  it { should validate_length_of(:password).is_at_least(8) }

  context '.first_name' do
    context 'when user has a full name' do
      let(:user) { FactoryBot.create(:user) }
      it 'returns the first name only' do
        expect(user.first_name).to eq('John')
      end
    end
  end
end
