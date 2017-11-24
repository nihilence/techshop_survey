class SurveysController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @categories = Category.all
  end

  def create
    user = User.create(
      name: params[:user][:name],
      email: params[:user][:email],
      monthly_contribution: params[:user][:monthly_contribution],
      months_in_advance: params[:user][:months_in_advance],
      funding_details: params[:user][:funding_details],
      funding_donation: params[:user][:funding_donation]
    )

    unless params[:wanted_equipment].nil?
      params[:wanted_equipment].each do |id|
          EnthusiastEquipment.create!(user_id: user.id, equipment_id: id)
      end
    end

    unless params[:owned_equipment].nil?
      params[:owned_equipment].each do |id|
          OwnerEquipment.create!(user_id: user.id, equipment_id: id)
      end
    end

    render json: params
  end
end
