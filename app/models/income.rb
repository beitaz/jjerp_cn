# == Schema Information
#
# Table name: incomes
#
#  id         :integer          not null, primary key
#  origin     :string(255)
#  origin_id  :string(255)
#  target     :string(255)
#  amount     :decimal(8, 2)
#  creator    :string(255)
#  note       :string(255)
#  deleted    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Income < ApplicationRecord
end
