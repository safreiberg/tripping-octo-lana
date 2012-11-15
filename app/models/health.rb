# == Schema Information
#
# Table name: healths
#
#  id         :integer          not null, primary key
#  weight     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Health < ActiveRecord::Base
  attr_accessible :weight, :user_id
  
  belongs_to :user
end
