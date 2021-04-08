class Students::NotesController < ApplicationController
  before_filter :set_notable
  
  def new
    @note = @notable.notes.new
  end

  def create
    @note = @notable.notes.new(params[:note])
    if @note.save 
      redirect_to @notable, notice: 'Note added.'
    else
      render :new
    end
  end

  private

  def set_notable
    @notable = Student.find(params[:student_id])
  end
end
