# frozen_string_literal: true

require "rails_helper"

RSpec.describe UsersController, type: :controller do

  describe '#create' do
    context 'with valid attributes' do
      let(:valid_attributes) do
        { user: { full_name: 'John Doe',
                  email: 'john_doe@gmail.com',
                  password: '12345678',
                  password_confirmation: '12345678' } }
      end
      it 'should create an user and redirect to root path' do
        expect do
          post :create, params: valid_attributes
        end.to change{ User.count }.by(1)

        expect(response).to redirect_to(root_path)
      end
    end

    context 'with invalid attributes' do
      let(:invalid_attributes) do
        { user: { full_name: 'John Doe',
                  password: '12345678',
                  password_confirmation: '12345678' } }
      end
      context 'without email' do
        it 'should not create an user' do
          expect do
            post :create, params: invalid_attributes
          end.to change{ User.count }.by(0)

          expect(response).to render_template(:new)
        end
      end
    end
  end
end