# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  description :text
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :description, :time, :user_id
  
  validates_presence_of :user_id
  validates_presence_of :time
  
  belongs_to :user
end
