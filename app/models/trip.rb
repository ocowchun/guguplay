class Trip < ActiveRecord::Base
  has_many :trip_placeships
  has_many :places,:through=>:trip_placeships

end
