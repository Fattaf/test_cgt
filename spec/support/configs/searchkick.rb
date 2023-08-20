# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:suite) do
    Searchkick.models.each do |model_name|
      model_name.searchkick_index.delete
      model_name.searchkick_index.create

      model_name.reindex(import: false)
    rescue OpenSearch::Transport::Transport::Errors::NotFound => _e
      Rails.logger.warn('[SEARCHKICK: refreshing search indexes failed! Maybe does not exist.]')
    end

    Searchkick.disable_callbacks
  end
end
