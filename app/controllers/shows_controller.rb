# frozen_string_literal: true

require 'net/http'

class ShowsController < ApplicationController
  def create
    data = params[:show]
    show = Show.where(tvmaze: data[:id]).first_or_create(
      tvmaze: data[:id],
      avatar: data[:image][:original],
      title: data[:name],
      description: data[:summary],
      genre: data[:genres]
    )
    render json: show.id
  end

  def index
    @shows = Show.all
  end

  def show
    show = Show.find(params[:id])
    @show = Shows::FetchShowInfo.new.call(show.tvmaze)
  end

  def find_show
    data = Shows::FindShow.new.call(params[:query])
    render json: data
  end
end
