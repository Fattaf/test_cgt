# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Prompts' do
  describe 'GET /prompts' do
    let!(:prompt) { create(:prompt_query) }

    before do
      get '/prompts'
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'assigns prompts' do
      expect(assigns(:prompts)).to eq([prompt])
    end

    it 'renders the index template' do
      expect(response).to render_template('prompts/index')
    end
  end

  describe 'GET /prompts/search', full_text_search: true do
    let!(:prompt_a) { create(:prompt_query, query: 'test test search me here test test ') }
    let!(:prompt_b) { create(:prompt_query, query: 'test test not here pls test test ') }

    let(:search_param) { 'search me here' }

    before do
      rebuild_search(PromptQuery)

      get '/prompts/search', params: { search_param: search_param }
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'assigns searching prompts' do
      expect(assigns(:prompts).results).to include(prompt_a)
    end

    it 'omits other prompts' do
      expect(assigns(:prompts).results).not_to include(prompt_b)
    end

    it 'renders the index template' do
      expect(response).to render_template('prompts/index')
    end

    context 'when search_param not passed' do
      let(:search_param) { nil }

      it 'redirect to index' do
        expect(response).to redirect_to(prompts_path)
      end

      it 'adds flash message' do
        expect(flash[:alert]).to eq(PromptsController::NO_SEARCH_PARAM_MESSAGE)
      end
    end
  end
end
