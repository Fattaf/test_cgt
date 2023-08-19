# frozen_string_literal: true

class CreatePromptQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :prompt_queries do |t|
      t.text :query, null: false

      t.timestamps
    end
  end
end
