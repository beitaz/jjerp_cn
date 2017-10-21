# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cname      :string(255)
#  uid        :string(255)
#  ply        :integer
#  texture    :integer
#  color      :integer
#  price      :decimal(8, 2)
#  stock      :integer
#  note       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ApplicationRecord
end
