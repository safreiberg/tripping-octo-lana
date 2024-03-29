# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  length     :integer
#  intensity  :integer
#  start      :datetime
#  end        :datetime
#  variety    :string(255)
#  heart_rate :integer
#  user_id    :integer
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  what       :string(255)
#  time       :datetime
#

class Workout < ActiveRecord::Base
  attr_accessible :endtime, :heart_rate, :intensity, :length, :location, :starttime, :variety, :user_id, :what
  
  belongs_to :user
  
  validates_presence_of :user_id
  validates_presence_of :length
  validates_presence_of :starttime
  validates_presence_of :what
  
end
