class NotesController < ApplicationController
  
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
end
