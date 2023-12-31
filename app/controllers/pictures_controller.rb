class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :are_you_current_user?, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render :new
    else
      if @picture.save
        redirect_to pictures_path, notice: "投稿でけた👍"
      else
        render :new
      end
    end
  end

  def confirm
    @picture = Picture.new(picture_params)
  end

  def show
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "編集オッケー🙆"
    else
      render :edit
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice:"消せた(´ω｀)b"
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
