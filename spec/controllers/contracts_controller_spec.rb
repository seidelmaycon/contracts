# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContractsController, type: :controller do
  describe '#index' do
    let(:user) { FactoryBot.create(:user) }
    let!(:user_contract) { FactoryBot.create(:contract, user: user) }
    let!(:another_contract) { FactoryBot.create(:contract) }

    context 'as an user' do
      it 'should authenticate and redirect to root path' do
        get :index, session: { user_id: user.id }

        expect(response).to render_template(:index)
        expect(assigns(:contracts)).to eq([user_contract])
      end
    end

    context 'as a guest' do
      it 'should authenticate and redirect to root path' do
        get :index

        expect(response).to redirect_to(signin_path)
        expect(assigns(:contracts)).to eq(nil)
      end
    end
  end
end
