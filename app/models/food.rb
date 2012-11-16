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
  
  validates_numericality_of :calories, :greater_than => 0, :allow_blank => false
  validates_numericality_of :carbs, :greater_than => 0, :allow_blank => true
  validates_numericality_of :fat, :greater_than => 0, :allow_blank => true
  validates_numericality_of :protein, :greater_than => 0, :allow_blank => true
  
  belongs_to :user
  
  
end
