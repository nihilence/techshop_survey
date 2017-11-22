class LandingPageController < ApplicationController
  def home
    render :template => 'landing_page/home'
  end
end
