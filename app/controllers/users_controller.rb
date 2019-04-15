class UsersController < ApplicationController
  def create
    user = User.find_or_create_by(autodesk_id: user_params[:autodesk_id]) do |user|
      user.email = user_params[:email]
      user.autodesk_username = user_params[:autodesk_username]
      user.autodesk_displayname = user_params[:autodesk_display_name]
    end

    render json: user
  end

  private

  def user_params
    params.permit(:email, :autodesk_id, :autodesk_username, :autodesk_display_name)
  end
end
