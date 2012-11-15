# == Schema Information
#
# Table name: feelings
#
#  id          :integer          not null, primary key
#  value       :integer
#  target_type :string(255)
#  target_id   :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  time        :datetime
#  location    :string(255)
#

class Feeling < ActiveRecord::Base
  attr_accessible :target_id, :target_type, :value, :user_id, :time, :location
  
  belongs_to :user
  
  validates_presence_of :target_type
  validates_presence_of :user_id
  validates_presence_of :value
  validates_presence_of :time
  
end
