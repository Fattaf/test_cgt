# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Prompts', type: :request do
  describe 'GET /prompts' do
    let!(:prompt) { create(:prompt_query) }

    it 'returns a successful response' do
      get '/prompts'
      expect(response).to be_successful
    end

    it 'assigns @users' do
      get '/prompts'
      expect(assigns(:prompts)).to eq([prompt])
    end

    it 'renders the index template' do
      get '/prompts'
      expect(response).to render_template('prompts/index')
    end
  end
end
