# frozen_string_literal: true

class PromptsController < ApplicationController
  NO_SEARCH_PARAM_MESSAGE = 'Search param not passed'

  rescue_from ActionController::ParameterMissing do |exception|
    redirect_to :prompts, alert: NO_SEARCH_PARAM_MESSAGE
  end

  def index
    @pagy, @prompts = pagy PromptQuery.all
  end

  def search
    @pagy, @prompts = pagy_searchkick PromptQuery.pagy_search(search_param)

    render :index
  end

  private

  def search_param
    @search_param ||= params.require(:search_param)
  end
end
