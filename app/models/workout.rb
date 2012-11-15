# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  length     :integer
#  intensity  :integer
#  start      :datetime
#  end        :datetime
#  type       :string(255)
#  heart_rate :integer
#  user_id    :integer
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Workout < ActiveRecord::Base
  attr_accessible :end, :heart_rate, :intensity, :length, :location, :start, :type, :user_id
  
  belongs_to :user
end
