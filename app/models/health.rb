# == Schema Information
#
# Table name: healths
#
#  id         :integer          not null, primary key
#  weight     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  time       :datetime
#

class Health < ActiveRecord::Base
  attr_accessible :weight, :user_id, :time
  
  belongs_to :user
end
