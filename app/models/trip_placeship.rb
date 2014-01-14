class TripPlaceship < ActiveRecord::Base
belongs_to :trip
belongs_to :place
end
