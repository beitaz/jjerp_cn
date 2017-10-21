# == Schema Information
#
# Table name: crafts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cname      :string(255)
#  uid        :string(255)
#  uom        :string(255)
#  price      :decimal(8, 2)
#  desc       :string(255)
#  note       :string(255)
#  deleted    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CraftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
