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
#

class Food < ActiveRecord::Base
  attr_accessible :calories, :carbs, :fat, :protein, :time
end