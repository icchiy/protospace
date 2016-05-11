class UsersController < ApplicationController

  before_action :move_to_index, except: [:index,:new]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if current_user.id
      user.update(update_params)
    else
    # redirect_to edit_user_path, alert: "couldn't update"
    redirect_to edit_user_path, alert: 'ログインに失敗しました'
    end
  end

  def new
    @user = User.new
    # @user.save
  end

 #  def create
 #    if  User.create(create_params).merge(user_id: current_user.id)
 #    else
 #      redirect_to new_user_path, alert: "couldn't sign_up"
 #   end
 #   binding.pry
 # end


  private
  def update_params
    params.require(:user).permit(:username, :email, :password,:profile,:works,:member_of)
  end

  def create_params
    params.permit(:username, :email, :password,:profile,:works,:member_of)
  end

  def move_to_index
    redirect_to :action => "index" unless user_signed_in?
  end
end


