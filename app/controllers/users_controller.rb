class UsersController < ApplicationController

  before_action :set_user, :move_to_index, except: [:index, :new]
  def show
  end

  def edit
  end

  def update
    if current_user.id
      current_user.update(update_params)
      redirect_to current_user, notice: "update successfully"
    else
      redirect_to edit_user_path(current_user), alert: "couldn't update"
    end
  end

  def new
    @user = User.new
  end
end
