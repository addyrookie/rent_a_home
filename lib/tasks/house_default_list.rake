namespace :db do
  desc 'Filling House table with drop down list values'
  task :drop_down_list => :environment do
    Rake::Task['db:reset'].invoke

    add_location
    add_furnishing
    add_bedroom
    add_housetype
  end
end

  def add_furnishing 
    Furnishing.create(:status => "Fully Furnished")
    Furnishing.create(:status => "Semi Furnished")
    Furnishing.create(:status => "Not Furnished")    
  end
  
  def add_bedroom
    Bedroom.create(:bedroom => 1)
    Bedroom.create(:bedroom => 2)
    Bedroom.create(:bedroom => 3)
    Bedroom.create(:bedroom => 4)
    Bedroom.create(:bedroom => 5)
    Bedroom.create(:bedroom => 6)
  end
  
  def add_housetype
    Housetype.create(:housetype => "Apartment")
    Housetype.create(:housetype => "Beach house")
    Housetype.create(:housetype => "Bunglow")
    Housetype.create(:housetype => "Condo")
    Housetype.create(:housetype => "Farmhouse")
    Housetype.create(:housetype => "Hostel")
    Housetype.create(:housetype => "Paying Guest")
    Housetype.create(:housetype => "Penthouse")
    Housetype.create(:housetype => "Studio")
    Housetype.create(:housetype => "Suburban Home")  
  end
  
  def add_location
    co1 = Country.create(:country => "India")
    co2 = Country.create(:country => "Australia") 
    co3 = Country.create(:country => "United States")
    
    
    st1 = State.create(:state => "Uttar Pradesh" , :country_id => co1.id)
    st2 = State.create(:state => "Maharashtra" , :country_id => co1.id)
    st3 = State.create(:state => "Karnataka" , :country_id => co1.id)
    st4 = State.create(:state => "New South Wales" , :country_id => co2.id)
    st5 = State.create(:state => "California" , :country_id => co3.id)
    st6 = State.create(:state => "Texas" , :country_id => co3.id)
    
    
    ct1  = City.create(:city => "Lucknow" , :state_id => st1.id)
    ct2  = City.create(:city => "Kanpur" , :state_id => st1.id)
    ct3  = City.create(:city => "Mumbai" , :state_id => st2.id)
    ct4  = City.create(:city => "Pune" , :state_id => st2.id)
    ct5  = City.create(:city => "Bangalore" , :state_id => st3.id)
    ct6  = City.create(:city => "Mangalore" , :state_id => st3.id)
    ct7  = City.create(:city => "Sydney" , :state_id => st4.id)
    ct8  = City.create(:city => "Los Angeles" , :state_id => st5.id)
    ct9  = City.create(:city => "San Jose" , :state_id => st5.id)
    ct10 = City.create(:city => "San Francisco" , :state_id => st5.id)
    ct11 = City.create(:city => "Houston" , :state_id => st6.id)
    ct12 = City.create(:city => "Atlanta" , :state_id => st6.id)
  end
    
  
  
