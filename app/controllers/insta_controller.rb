class InstaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_insta, only:[:edit, :destroy, :update]
  def index
    @photos = Photo.all
  end

  def edit
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    @photo.update(photo_params)
    redirect_to root_path
  end

  def destroy
    @photo.destroy
    redirect_to root_path
  end

  private
    def set_insta
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:content)
    end
end
