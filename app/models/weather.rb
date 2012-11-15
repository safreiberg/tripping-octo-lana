# == Schema Information
#
# Table name: weathers
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  temperature :integer
#  time        :datetime
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Weather < ActiveRecord::Base
  attr_accessible :description, :temperature, :time, :user_id
  
  validates_presence_of :user_id
  
  belongs_to :user
end
