require 'httparty'
require 'algolia'


class PromptsController < ApplicationController
  def index
    @prompts = search_prompts(params[:search_term]) if params[:search_term].present?
    @recent_searches = KeywordHistory.last(5).reverse
  end

  private

  def search_prompts(keyword)
    client = Algolia::Search::Client.create('MPTS3X2VOW', '2a74641fed9d8814db2eb23b27a582cd')

    index = client.init_index('prompts_index')
    results = index.search(keyword)

    prompts_data = results[:hits].map { |hit| hit[:prompt] }
    
    save_search_keyword(keyword)

    return prompts_data
  rescue Algolia::AlgoliaError => e
    puts "Algolia error: #{e.message}"
    return []
  rescue StandardError => e
    puts "Error: #{e.message}"
    return []
  end

  def save_search_keyword(keyword)
    KeywordHistory.create(keyword: keyword)
  rescue StandardError => e
    puts "Error saving search keyword: #{e.message}"
  end
end
