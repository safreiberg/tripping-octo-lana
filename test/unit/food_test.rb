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

require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
