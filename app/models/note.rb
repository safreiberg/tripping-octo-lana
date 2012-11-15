# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Note < ActiveRecord::Base
  attr_accessible :description, :user_id
  
  belongs_to :user
  
  validates_presence_of :user_id
  validates_presence_of :description, allow_nil: false
end
