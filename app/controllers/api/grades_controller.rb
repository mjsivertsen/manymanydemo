class Api::GradesController < ApplicationController

  def index
    grades = Grade.all_and_then_some
    render json: grades
  end

  def show
  end

  def create
    @grade = Grade.new(grade_params)
    if(@grade.save)
      render json: @grade
    else
      render json: {error: @grade.errors}, status:422
    end
  end

  def update
  end

  def destroy
  end

  private

  def grade_params
    params.require(:grade).permit(:score, :user_id, :skill_id)


end
