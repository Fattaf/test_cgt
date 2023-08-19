# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PromptQuery do
  describe 'validations' do
    subject { build_stubbed(:prompt_query) }

    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:query) }
  end
end
