# frozen_string_literal: true

module TestHelpers
  module FullTextSearchTestHelper
    def rebuild_search(model, params = {})
      model.reindex(**params)
    end

    def refresh_search(model)
      model.search_index.refresh
    end

    def remove_from_search(entity)
      entity.class.searchkick_index.remove(entity)
    end

    def drop_whole_search_index(model)
      model.searchkick_index.delete
    rescue OpenSearch::Transport::Transport::Errors::NotFound
      nil
    end

    def create_whole_search_index(model)
      model.searchkick_index.create

      rebuild_search(model, import: false)
    end
  end
end
