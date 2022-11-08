class ProgressPhotosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # shows all photos associated with a user
    # GET /progress_photos
    def index
        user = session[:user_id]
        photos = User.find(user)
        render json: photos
    end

    # GET a particular photos associated with a user
    # GET /progress_photos/:id
    def show
        photo = ProgressPhoto.find(params[:id])
        render json: photo, status: :ok
    end

    # POST a new exercise for this user
    # POST /exercises
    def create
        photo = Exercise.create(progress_photo_params)
        render json: photo, status: :created
    end

    # UPDATE an exercise
    # UPDATE /exercies/:id
    def update
        photo = ProgressPhoto.find(params[:id])
        photo.update(progress_photo_params)
        render json: photo, status: :ok
    end

    # DELETE an exercise
    # DELETE /exercies/:id
    def destroy
        photo = ProgressPhoto.find(params[:id])
        photo.destroy
        head :no_content
    end

    private
    def progress_photo_params
        params.permit(:user_id, :date)
    end

    def render_not_found_response
        render json: {error: "Progress Photo not found", status: :not_found}
    end
end
