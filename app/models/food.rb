# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  carbs      :integer
#  fat        :integer
#  protein    :integer
#  time       :datetime
#  calories   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  name       :string(255)
#  location   :string(255)
#

class Food < ActiveRecord::Base
  attr_accessible :calories, :carbs, :fat, :protein, :time, :user_id, :location, :name
  
  validates_presence_of :user_id
  validates_presence_of :time
  validates_presence_of :calories
  validates_presence_of :name
  
  belongs_to :user
  
  
end
