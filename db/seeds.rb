# frozen_string_literal: true

require 'csv'

SAMPLE_HEADER = 'INFO'

CSV.foreach(Rails.root.join('db/datasets/sample.csv'), headers: true) do |row|
  PromptQuery.create!(query: row[SAMPLE_HEADER])
end

Searchkick.models.each do |model_name|
  model_name.searchkick_index.delete
  model_name.searchkick_index.create

  model_name.reindex
end
