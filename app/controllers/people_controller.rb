class PeopleController < ApplicationController

  before_action :set_person, only: %i[ show edit update destroy ]
  
  def index
    @people = Person.search(params[:search])
  end
  
  def show
  end
  
  def edit
  end
  
  
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: "Person was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  
  private
  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :organisation_id, :record_count)
  end
end
