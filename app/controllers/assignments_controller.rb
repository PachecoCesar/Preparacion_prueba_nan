class AssignmentsController < ApplicationController
  def new
  end
  def create
    @assignment = Assignment.new(assignment_params)

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment.project, notice: 'Assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end


private
def assignment_params
   params.require(:assignment).permit(:person_id, :project_id)
 end

end
