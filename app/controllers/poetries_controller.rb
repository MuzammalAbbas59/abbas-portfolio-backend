class PoetriesController < ApplicationController
  def index
    @poetries = Poetry.all
    render json: @poetries
  end
end