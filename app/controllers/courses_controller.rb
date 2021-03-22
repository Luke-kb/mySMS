class CoursesController < ApplicationController
    before_filter :load_course, except: [:index]

    def index
        @courses = Course.paginate(page: params[:page], per_page: 10)
    end

    def show
    end

    def edit
    end

    def update
        if @course.update_attributes(params[:student])
            redirect_to @course, notice: 'Course was successfully updated.'
        else
            render :edit
        end
    end

        
    private

    def load_course
        @course = Course.find(params[:id])
    end
end
