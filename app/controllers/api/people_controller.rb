class Api::PeopleController < ApplicationController
  
  def index
    render json: Person.search(params[:search]), status: :ok
  end
  
  def show
      render json: Person.find(params['id'])
  end

  def update
    if @person.update(person_params)
      render json: @person, status: :ok
    else
      render json: [], status: :unprocessable_entity
    end
  end
    
  private  

  def person_params
    params.require(:person).permit(:first_name, :last_name, :organisation_id, :record_count)
  end
end
  