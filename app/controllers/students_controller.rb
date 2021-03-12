class StudentsController < ApplicationController
   
    def index
        @students = Student.paginate(page: params[:page], per_page: 10)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit        
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.find(params[:id])
        if @student.update_attributes(params[:student])
            redirect_to @student, notice: 'Student details has been successfully updated.'
        else
            render :edit
        end
    end
    
    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        respond_to do |format|
            format.html { redirect_to students_path, notice: 'Listing was successfully destroyed.' }  
        end
    end

end
