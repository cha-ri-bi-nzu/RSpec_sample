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
  
end
