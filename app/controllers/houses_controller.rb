class HousesController < ApplicationController
  def index
    @houses    = House.all
    @countries = Country.all
    @states    = State.all
    @cities    = City.all
  end

  def new
    @house  = House.new
    @countries = Country.all
    @states    = State.all
    @cities    = City.all
  end

  def edit
  end

  def show
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(params[:house])  
    if @house.save
      flash[:success] = "House put up for rent"
      redirect_to @house
    else
      flash[:failure] = "Unable to save"
      render 'new'
    end          
  end
  
  def update_states
    country = Country.find(params[:country_id])
    states = country.states
    cities = country.cities
    
    render :update do   |page|
    page.replace_html 'states' , :partial => 'states' , :object => states
    page.replace_html 'cities' , :partial => 'cities' , :object => cities
    end
  end
  
  
  def update_cities
    state  = State.find(params[:state_id])
    cities = state.cities
    
    render :update do |page|
      page.replace_html 'cities' , :partial => 'cities' , :object => cities
    end
    
  end     

end
