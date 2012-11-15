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

require 'test_helper'

class HealthTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
