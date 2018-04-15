class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    user.save
    # write validation
  end

  private

  def user_params
    params.require(:user).permit(:name, :project_id)
  end
end
