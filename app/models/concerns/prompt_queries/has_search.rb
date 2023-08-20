# frozen_string_literal: true

module PromptQueries
  module HasSearch
    extend ActiveSupport::Concern
    SEARCHABLE_COLUMNS = [:query].freeze
    FILTERABLE_COLUMNS = [:query].freeze

    included do
      searchkick  searchable: SEARCHABLE_COLUMNS,
                  match: :word_start,
                  filterable: FILTERABLE_COLUMNS
    end
  end
end
