class ProgramsController < ApplicationController
    # show all programs associated with current user
    def index
        id = session[:user_id]
        programs = Program.where(user_id: id)
        if programs
            render json: programs, status: :ok
        else 
            render_not_found_response
        end
    end

    # show specific program associated with current user
    def show
        program = Program.find_by(id: params[:id])
        if program
            render json: program, status: :ok
        else
            render_not_found_response
        end
    end

    # CREATE a new program
    def create
        program = Program.create(program_params)
        if program
            render json: program, status: :created
        else
            render json: {error: "Program not created"}, status: :unprocessable_entity
        end
    end

    #update/PATCH
    def update
        program = Program.find_by(id: params[:id])
        program.update(program_params)
        if program
            render json: program, status: :ok
        else
            render json: {error: "Program not updated"}, status: :unprocessable_entity
        end
    end

    #DELETE a program
    def destroy
        program = find_program
        program.destroy
        head :no_content
    end

    private
    def find_program
        Program.find(params[:id])
    end

    def render_not_found_response
        render json: {error: "Program not found"}, status: :not_found
    end

    def program_params
        params.permit(:user_id, :name, :notes)
    end
end
