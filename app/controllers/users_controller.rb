class UsersController < ApplicationController

  before_action :move_to_index, except: [:index,:new]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.id
      current_user.update(update_params)
      redirect_to current_user, notice: 'update successfully.'
    else
    redirect_to edit_user_path(current_user), alert: "couldn't update"
    end
  end

  def new
    @user = User.new
  end
end
