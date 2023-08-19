# frozen_string_literal: true

class PromptsController < ApplicationController
  def index
    @pagy, @prompts = pagy(PromptQuery.all)
  end
end
