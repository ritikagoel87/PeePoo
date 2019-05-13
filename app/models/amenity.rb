# == Schema Information
#
# Table name: amenities
#
#  id          :bigint(8)        not null, primary key
#  toilet      :integer
#  bath        :integer
#  shower      :integer
#  baby        :integer
#  location_id :integer
#  rating      :integer
#  price       :float
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Amenity < ApplicationRecord
  belongs_to :location
  has_many :bookings
end
