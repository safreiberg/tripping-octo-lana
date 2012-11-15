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

require 'test_helper'

class SleepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
