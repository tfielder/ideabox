class Admin::ImagesController < Admin::BaseController
  before_action :set_image, only: [:edit, :update]

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    image = Image.new(image_params)
    image.save
    redirect_to admin_images_path
  end

  def edit

  end

  def update
    @image.update(image_params)
    redirect_to admin_images_path
  end

  def destroy
    @image = Image.destroy(params[:id])
    redirect_to admin_images_path
  end

  private
    def image_params
      params.require(:image).permit(:url, :description)
    end

    def set_image
      @image = Image.find(params[:id])
    end
end