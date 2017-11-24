class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @owned_equipment = @user.owner_equipments.map { |o| o.equipment }
    @desired_equipment = @user.enthusiast_equipments.map { |e| e.equipment }
  end
end
