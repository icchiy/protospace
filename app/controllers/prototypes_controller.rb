class PrototypesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
  end

  def new
  end

  def show
  end


  # def create
  #   Prototypes.create(catchcopy: prototypes_params[:catchcopy],title: prototypes_params[:title],consept: prototypes_params[:consept])
  # end

  # private
  # def Prototypes_params
  #     params.permit(:title,:catchcopy,:consept)
  # end

  def move_to_index
    redirect_to :action => index unless user_signed_in?
  end
end
