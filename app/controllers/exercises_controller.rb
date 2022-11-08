class ExercisesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # shows all exercises associated with a user
    # GET /exercises
    def index
        user = session[:user_id]
        exercises = User.find(user)
        render json: exercises
    end

    # GET a particular exercise associated with a user
    # GET /exercises/:id
    def show
        exercise = Exercise.find(params[:id])
    end

    # POST a new exercise for this user
    # POST /exercises
    def create
        exercise = Exercise.create(exercise_params)
        render json: exercise, status: :created
    end

    # UPDATE an exercise
    # UPDATE /exercies/:id
    def update
        exercise = Exercise.find(params[:id])
        exercise.update(exercise_params)
        render json: exercise, status: :ok
    end

    # DELETE an exercise
    # DELETE /exercies/:id
    def destroy
        exercise = Exercise.find(params[:id])
        exercise.destroy
        head :no_content
    end

    private
    def exercise_params
        params.permit(:program_id, :exercise_name, :prescribed_sets, :prescribed_reps, :prescribed_weight, :performed_sets, :performed_reps, :performed_weight, :rest_duration, :notes)
    end

    def render_not_found_response
        render json: {error: "Exercise not found", status: :not_found}
    end
end
