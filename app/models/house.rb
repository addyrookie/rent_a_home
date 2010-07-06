class House < ActiveRecord::Base
  attr_accessible :address , :location , :built_area , :rent , :tagline , :description 
  
end
