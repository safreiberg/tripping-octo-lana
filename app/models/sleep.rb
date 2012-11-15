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
#

class Sleep < ActiveRecord::Base
  attr_accessible :end, :quality, :start, :user_id, :location
  
  belongs_to :user
end
