class InstitutesController < ApplicationController
  before_filter :load_institute, except: [:index]

  def index
    @institutes = Institute.includes(:courses).order(:name).paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def edit
  end

  def update
    if @institute.update_attributes(params[:institute])
      redirect_to @institute, notice: 'Institute was successfully updated.'
    else
      render :edit
    end
  end

  private

  def load_institute
    @institute = Institute.find(params[:id])
  end
end
