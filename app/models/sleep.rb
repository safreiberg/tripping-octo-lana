# == Schema Information
#
# Table name: sleeps
#
#  id         :integer          not null, primary key
#  start      :datetime
#  end        :datetime
#  quality    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  location   :string(255)
#

class Sleep < ActiveRecord::Base
  attr_accessible :endtime, :quality, :starttime, :user_id, :location
  
  validates_presence_of :user_id
  validates_presence_of :starttime
  validates_presence_of :endtime
  
  belongs_to :user
end
