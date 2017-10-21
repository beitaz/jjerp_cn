# == Schema Information
#
# Table name: expends
#
#  id         :integer          not null, primary key
#  reason     :string(255)
#  amount     :decimal(8, 2)
#  creator    :string(255)
#  note       :string(255)
#  deleted    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Expend < ApplicationRecord
end
