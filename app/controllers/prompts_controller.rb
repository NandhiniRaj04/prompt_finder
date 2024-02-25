require 'httparty'
require 'algolia'


class PromptsController < ApplicationController
  def index
    @prompts = search_prompts(params[:search_term]) if params[:search_term].present?
  end

  private

  def search_prompts(keyword)
    client = Algolia::Search::Client.create('MPTS3X2VOW', '2a74641fed9d8814db2eb23b27a582cd')

    index = client.init_index('prompts_index')
    results = index.search(keyword)

    prompts_data = results[:hits].map { |hit| hit[:prompt] }

    return prompts_data
  rescue Algolia::AlgoliaError => e
    puts "Algolia error: #{e.message}"
    return []
  rescue StandardError => e
    puts "Error: #{e.message}"
    return []
  end
end
