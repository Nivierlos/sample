class ResultsController < ApplicationController
   def new
    @page_title = 'Add New Marks'
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      flash[:notice] = 'Marks added!'
      redirect_to results_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = 'Edit Marks'
    @result = Result.find(params[:id])

  end

  def update
     @result = Result.find(params[:id])
   if  @result.update(result_params)
      flash[:notice] = 'Marks updated!'
       redirect_to results_path
     else
      render 'edit'
    end
  end

  def destroy
     @result = Result.find(params[:id])
    @result.destroy
    flash[:notice] = 'Marks deleted!'

    redirect_to departments_path
  end

  def index 
    @page_title = 'Marks'
    @results = Result.all
    @student = Student.all
    @department = Department.all
    @level = Level.all
  end

  def show
    @page_title = 'Marks for:'
    @result = Result.find(params[:id])
    @department = Department.all
    @level = Level.all
    @student = Student.all

    respond_to do |format|
      format.html
      format.pdf do
        pdf = ResultPdf.new(@result)
        send_data pdf.render, filename: 'marks for: '+(@result.student.reg_number)+'.pdf', type: 'application/pdf', disposition: 'inline'
      end
    end
  end

  def result_params
    params.require(:result).permit(:student_id, :course_id, :category, :department_id, :level_id, :marks_value)
  end 
end


