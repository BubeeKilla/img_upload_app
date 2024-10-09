class UploadsController < ApplicationController
  def create
    image = params[:image]
    obj = S3_BUCKET.object(image.original_filename)
    obj.upload_file(image.tempfile)

    flash[:notice] = "Image uploaded successfully to S3!"
    redirect_to root_path
  rescue StandardError => e
    flash[:alert] = "Error uploading image: #{e.message}"
    redirect_to root_path
  end

  def index
    @images = S3_BUCKET.objects
  end
end
