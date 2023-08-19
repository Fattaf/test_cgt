# frozen_string_literal: true

class PromptQuery < ApplicationRecord
  validates :query, presence: true
end
