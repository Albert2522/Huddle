# == Schema Information
#
# Table name: huddles_users
#
#  id         :integer          not null, primary key
#  huddle_id  :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HuddlesUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
