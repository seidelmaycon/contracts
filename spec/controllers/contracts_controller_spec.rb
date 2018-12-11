# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContractsController, type: :controller do
  describe '#index' do
    let(:user) { FactoryBot.create(:user) }
    let!(:user_contract) { FactoryBot.create(:contract, user: user) }
    let!(:another_contract) { FactoryBot.create(:contract) }

    context 'as an user' do
      it 'should authenticate and render index with user contracts' do
        get :index, session: { user_id: user.id }

        expect(response).to render_template(:index)
        expect(assigns(:contracts)).to eq([user_contract])
      end
    end

    context 'as a guest' do
      it 'should not authenticate and redirect to signin path' do
        get :index

        expect(response).to redirect_to(signin_path)
        expect(assigns(:contracts)).to eq(nil)
      end
    end
  end

  describe '#create' do
    let(:user) { FactoryBot.create(:user) }
    let!(:user_contract) { FactoryBot.create(:contract, user: user) }
    let(:vendor) { FactoryBot.create(:vendor) }
    let(:category) { FactoryBot.create(:category) }

    context 'as an user' do
      context 'with valid attributes' do
        let(:valid_attributes) do
          { contract: { vendor_id: vendor.id,
                        category_id: category.id,
                        ends_on: Time.now + 10.weeks,
                        costs: 10.0 } }
        end
        it 'should authenticate and create a new contract' do
          expect do
            post :create, params: valid_attributes,
                          session: { user_id: user.id }
          end.to change { Contract.count }.by(1)

          expect(response).to redirect_to(contracts_path)
          expect(flash[:notice]).to be_present
        end
      end

      context 'with invalid attributes' do
        let(:invalid_attributes) do
          { contract: { vendor_id: vendor.id, category_id: category.id,
                        ends_on: Time.now + 10.weeks } }
        end

        it 'should not create an user' do
          expect do
            post :create, params: invalid_attributes,
                          session: { user_id: user.id }
          end.to change { Contract.count }.by(0)

          expect(response).to render_template(:new)
        end
      end
    end

    context 'as a guest' do
      it 'should not authenticate and redirect to signin path' do
        get :index

        expect(response).to redirect_to(signin_path)
        expect(assigns(:contracts)).to eq(nil)
      end
    end
  end
end
