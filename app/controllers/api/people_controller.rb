class Api::PeopleController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Person.where(filtering_params), status: :ok
  end
  
  def show
      render json: Person.find(params['id'])
  end

  def update
    person = Person.find(params['id'])
    if person.update(person_params)
      render json: person, status: :ok
    else
      render json: [], status: :unprocessable_entity
    end
  end
    
  private  

  def person_params
    params.require(:person).permit(:first_name, :last_name, :organisation_id, :record_count)
  end

  def filtering_params
    params.permit(:id, :first_name, :last_name, :organisation_id, :record_count).to_h
  end
end
  