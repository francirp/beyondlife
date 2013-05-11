class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find_by_id(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new
    @person.dob = params[:dob]
    @person.dod = params[:dod]
    @person.full_name = params[:full_name]
    @person.quote = params[:quote]
    @person.eulogy = params[:eulogy]
    @person.charity = params[:charity]
    @person.photo_url = params[:photo_url]
    
    if @person.save
            redirect_to people_url
          else
      render 'new'
    end
  end

  def edit
    @person = Person.find_by_id(params[:id])
  end

  def update
    @person = Person.find_by_id(params[:id])
    @person.dob = params[:dob]
    @person.dod = params[:dod]
    @person.full_name = params[:full_name]
    @person.quote = params[:quote]
    @person.eulogy = params[:eulogy]
    @person.charity = params[:charity]
    @person.photo_url = params[:photo_url]
    
    if @person.save
            redirect_to people_url
          else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find_by_id(params[:id])
    @person.destroy
        redirect_to people_url
      end
end
