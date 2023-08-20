# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PromptQuery do
  describe 'validations' do
    subject { build_stubbed(:prompt_query) }

    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:query) }
  end

  describe '#search', full_text_search: true do
    subject(:result) { described_class.search(query).results }

    let!(:prompt_query_a) { create(:prompt_query, query: 'test test search me here test test ') }
    let!(:prompt_query_b) { create(:prompt_query, query: 'test test not here pls test test ') }

    let(:query) { 'search me here' }

    before { rebuild_search(described_class) }

    it 'performs search by correctly' do
      expect(result).to include(prompt_query_a)
    end

    it 'does not includes other results' do
      expect(result).not_to include(prompt_query_b)
    end
  end
end
