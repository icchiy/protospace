class PrototypesController < ApplicationController

  def new
    @prototype = Prototype.new
  end

  def index
  end

  def create
    @prototype = Prototype.create(name: create_params[:name], concept: create_params[:concept], catch_copy: create_params[:catch_copy])

  end

  def show
  end

  private
  def create_params
  params.require(:prototype).permit(:name, :concept, :catch_copy, :image )
  # params.require(:image)images_attributes: [:image])
  # redirect_to prototypes_path
  # binding.pry
  end
end




