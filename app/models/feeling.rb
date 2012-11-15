class Feeling < ActiveRecord::Base
  attr_accessible :target_id, :target_type, :value, :user_id
end
