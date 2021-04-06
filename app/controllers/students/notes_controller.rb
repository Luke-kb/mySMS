class Students::NotesController < NotesController
  before_filter :set_notable
  
  def new
    @note = @notable.notes.new
  end

  private

  def set_notable
    @notable = Student.find(params[:student_id])
  end
end
