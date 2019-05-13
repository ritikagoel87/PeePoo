# == Schema Information
#
# Table name: locations
#
#  id            :bigint(8)        not null, primary key
#  suburb        :text
#  street        :text
#  house         :text
#  typeOfHouse   :text
#  description   :text
#  availableFrom :time
#  availableTo   :time
#  availability  :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Location < ApplicationRecord
  belongs_to :user
  has_many :amenities
  has_many :bookings, :through => :amenities
end
