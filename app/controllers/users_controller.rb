class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard; end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user

    if @user.update_attributes(current_user_params)
      flash[:notice] = 'Your changes have been saved successfully.'
    else
      flash[:alert] = 'There has been an error applying your changes.'
    end

    redirect_to dashboard_path
  end

  private

  def current_user_params
    params.require(:user).permit(:from, :about, :status, :language, :avatar)
  end
end
