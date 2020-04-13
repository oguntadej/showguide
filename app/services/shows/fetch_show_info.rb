# frozen_string_literal: true

module Shows
  class FetchShowInfo
    def call(show_id)
      fetch_from_tvmaze(show_id)
    end

    private

    def fetch_from_tvmaze(id)
      response = Faraday.get "https://api.tvmaze.com/shows/#{id}?embed=previousepisode"
      response.body
    end
  end
end
