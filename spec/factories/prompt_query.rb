# frozen_string_literal: true

FactoryBot.define do
  factory :prompt_query, class: PromptQuery.name do
    query { FFaker::Lorem.words(12) }
  end
end
