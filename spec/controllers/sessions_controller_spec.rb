# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe '#create' do
    let(:user) { FactoryBot.create(:user) }

    context 'with valid attributes' do
      let(:valid_attributes) { { email: user.email, password: user.password } }
      it 'should authenticate and redirect to root path' do
        post :create, params: valid_attributes

        expect(response).to redirect_to(root_path)
        expect(flash[:notice]).to be_present
      end
    end

    context 'with invalid attributes' do
      let(:invalid_attributes) { { email: user.email, password: '00000000' } }
      context 'with invalid password' do
        it 'should not authenticate an user and flash an error message' do
          post :create, params: invalid_attributes

          expect(response).to render_template(:new)
          expect(flash[:alert]).to be_present
        end
      end
    end
  end
end
