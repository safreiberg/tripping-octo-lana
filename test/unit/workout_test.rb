# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  length     :integer
#  intensity  :integer
#  start      :datetime
#  end        :datetime
#  variety    :string(255)
#  heart_rate :integer
#  user_id    :integer
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  what       :string(255)
#  time       :datetime
#

require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
