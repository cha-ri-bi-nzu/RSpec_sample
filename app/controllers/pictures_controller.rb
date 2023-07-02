class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :are_you_current_user?, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
  end

  def create
  end

  def confirm
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def picture_params
    params.require(:picture).permit(:image, :image_cache, :content)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def are_you_current_user?
    unless @picture.user_id == current_user.id
      redirect_to pictures_path
    end
  end
end
