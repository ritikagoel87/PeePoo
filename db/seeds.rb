# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create(:fname => 'Patricia', :lname => 'Nunes', :email => 'pat@ga.co', :password => 'chicken', :admin => true, :owner => true)
u2 = User.create(:fname => 'Ritika', :lname => 'Goel', :email => 'rit@ga.co', :password => 'chicken', :admin => true, :owner => true)
u3 = User.create(:fname => 'Mila', :lname => 'Svirina', :email => 'mil@ga.co', :password => 'chicken', :admin => true, :owner => true)
u4 = User.create(:fname => 'Owner', :lname => 'Owner', :email => 'owner@ga.co', :password => 'chicken', :admin => false, :owner => true)
u5 = User.create(:fname => 'User', :lname => 'User', :email => 'user@ga.co', :password => 'chicken', :admin => false, :owner => false)

Location.destroy_all
l1 = Location.create(:suburb => 'Sydney', :street => 'Market street', :house => '1/2', :typeOfHouse => 'unit', :description => 'Great and clean, please take the key from the reception', :availableFrom => '09:00:00', :availableTo => '17:00:00', :user_id => u4.id)
l2 = Location.create(:suburb => 'Millers Point', :street => 'Pottinger', :house => '1/103', :typeOfHouse => 'unit', :description => 'Great and clean, please take the key in the lock box', :availableFrom => '12:00:00', :availableTo => '17:00:00', :user_id => u1.id)
l3 = Location.create(:suburb => 'Sydney 2', :street => 'Kent street', :house => '27', :typeOfHouse => 'house', :description => 'Great and clean, please take the key in the lock box', :availableFrom => '09:00:00', :availableTo => '11:00:00', :user_id => u2.id)

Amenity.destroy_all
a1 = Amenity.create(:toilet => 1, :bath => 0, :location_id => l1.id, :rating => 4, :price => 2.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a2 = Amenity.create(:toilet => 1, :bath => 0, :location_id => l1.id, :rating => 4, :price => 2.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a3 = Amenity.create(:toilet => 1, :bath => 0, :location_id => l1.id, :rating => 4, :price => 2.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a4 = Amenity.create(:toilet => 1, :bath => 0, :location_id => l1.id, :rating => 4, :price => 2.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a5 = Amenity.create(:toilet => 1, :bath => 0, :location_id => l1.id, :rating => 4, :price => 2.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a6 = Amenity.create(:toilet => 1, :bath => 0, :location_id => l1.id, :rating => 4, :price => 2.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a7 = Amenity.create(:toilet => 1, :bath => 1, :shower => 1, :location_id => l2.id, :rating => 5, :price => 100.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')
a8 = Amenity.create(:toilet => 1, :bath => 1, :shower => 1, :baby => 1, :location_id => l3.id, :rating => 5, :price => 10.00, :image => 'https://st.hzcdn.com/simgs/4471eb2602556915_8-0659/eclectic-bathroom.jpg')

Booking.destroy_all
b1 = Booking.create(:timeIn => '10:00:00', :timeOut => '10:20:00', :amount => 4.00, :amenities_id => a2.id, :payment => true )
b2 = Booking.create(:timeIn => '11:00:00', :timeOut => '11:05:00', :amount => 2.00, :amenities_id => a1.id, :payment => false )
b3 = Booking.create(:timeIn => '13:00:00', :timeOut => '13:40:00', :amount => 400.00, :amenities_id => a7.id, :payment => true )
b4 = Booking.create(:timeIn => '09:15:00', :timeOut => '09:40:00', :amount => 30.00, :amenities_id => a8.id, :payment => false )

############# Associations ###################
u1.bookings << b1
u2.bookings << b2
u3.bookings << b3
u5.bookings << b4
