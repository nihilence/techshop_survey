class SurveysController < ApplicationController
  def new
    @categories = Category.all
  end
end
