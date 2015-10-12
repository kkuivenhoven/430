class PersonsController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    
    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end 
 
  def index
    @person = Person.all
  end

  private
    def person_params
       params.require(:person).permit(:first_name, :last_name)
    end
end
