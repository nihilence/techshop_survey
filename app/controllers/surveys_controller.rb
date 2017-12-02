class SurveysController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @categories = Category.all
    user = User.find_by_token(cookies[:token])
    @user = user.nil? ?  User.new(id: nil) : user
  end

  def create
    if params[:user][:monthly_contribution] == 'other'
       monthly_contribution = params[:user][:other_contribution]
    else
      monthly_contribution = params[:user][:monthly_contribution]
    end
    @user = User.find_by_token(cookies[:token]) || User.find_by_email(params[:user][:email])

    if @user.nil?
      user = User.create(
        name: params[:user][:name],
        email: params[:user][:email],
        monthly_contribution: monthly_contribution,
        months_in_advance: params[:user][:months_in_advance],
        upfront_contribution: params[:user][:upfront_contribution],
        desired_location: params[:user][:desired_location],
        ideas: params[:user][:ideas],
        skills: params[:user][:skills],
        classes_taught: params[:user][:classes_taught]
      )
    else
      user = @user
    end

    cookies[:token] = user.reload.token

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
    redirect_to controller: 'users', action: 'show', id: user.id
  end
end
