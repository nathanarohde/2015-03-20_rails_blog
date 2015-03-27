class PhotosController<ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @photo = Photo.new
  end

  def create
    @post = Post.find(params[:post_id])
    if params[:photo] == nil
      flash[:alert] = 'Image not added.'
      redirect_to :back
    else
      @photo = Photo.new(photo_params)
      @photo.post_id = @post.id
      if @photo.save
        flash[:notice] = 'Photo Uploaded'
        redirect_to :back
      else
        flash[:alert] = 'Try Again'
        redirect_to :back
      end
    end

  end

  def destroy
    photo = Photo.find(params[:id])
    if photo.destroy
      flash[:notice] = 'Photo deleted'
    else
      flash[:alert] = 'Not very helpful error.'
    end
    redirect_to :back
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
  
end
