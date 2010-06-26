namespace :db do
  desc 'Filling country , state, city values '
  task :location_data => :environment do
    Rake::Task['db:reset'].invoke
    
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
end   
    
    
