class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end


  def show
  student = Student.find_by(id: params[:id])
  if student
    render json: {
      id: student.id,
      first_name: student.first_name,
      last_name: student.last_name,
      grade: student.grade
    }, status: :ok
  else
    render json: { error: 'Student not found' }, status: :not_found
  end
end


end
