# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Note < ActiveRecord::Base
  attr_accessible :description
end
