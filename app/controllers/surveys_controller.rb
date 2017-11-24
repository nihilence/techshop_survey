class SurveysController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @categories = Category.all
  end

  def create
    render json: params
  end
end
