class Destination < ActiveRecord::Base
  belongs_to :CompanyName
  belongs_to :FromDestination
  belongs_to :ToDestination
end
