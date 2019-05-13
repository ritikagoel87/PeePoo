# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  fname           :text
#  lname           :text
#  email           :text
#  password_digest :text
#  admin           :boolean
#  owner           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :locations
  has_many :amenities, :through => :locations
  has_many :bookings
end
