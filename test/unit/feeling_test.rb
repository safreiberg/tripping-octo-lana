# == Schema Information
#
# Table name: feelings
#
#  id          :integer          not null, primary key
#  value       :integer
#  target_type :string(255)
#  target_id   :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  time        :datetime
#  location    :string(255)
#

require 'test_helper'

class FeelingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
