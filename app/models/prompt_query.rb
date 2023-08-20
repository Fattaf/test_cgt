# frozen_string_literal: true

class PromptQuery < ApplicationRecord
  include ::PromptQueries::HasSearch

  validates :query, presence: true
end
