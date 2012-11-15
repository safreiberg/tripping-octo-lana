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
#

class Feeling < ActiveRecord::Base
  attr_accessible :target_id, :target_type, :value, :user_id
  
  belongs_to :user
end
