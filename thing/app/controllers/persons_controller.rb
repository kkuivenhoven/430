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
    @persons = Person.all
  end

  def show
  end

  def edit
  end

  private
    def person_params
      params.require(:person).permit(:name, :age)
    end
end
