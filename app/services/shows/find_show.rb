# frozen_string_literal: true

module Shows
  class FindShow
    def call(query)
      search_on_tvmaze(query)
    end

    private

    def search_on_tvmaze(query)
      response = Faraday.get "https://api.tvmaze.com/search/shows?q=#{query}"
      response.body
    end
  end
end
