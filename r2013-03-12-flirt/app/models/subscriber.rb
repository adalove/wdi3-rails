# == Schema Information
#
# Table name: subscribers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Subscriber < ActiveRecord::Base
  attr_accessible :tagline, :bio, :preferences, :bodytype, :location, :status, :ethnicity, :gender, :age, :occupation, :interests, :political, :religious, :education, :income
  has_one :user, :as => :userable
end
