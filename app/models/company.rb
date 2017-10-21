# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cname      :string(255)
#  uid        :string(255)      not null
#  phone      :string(255)
#  contacter  :string(255)
#  telephone  :string(255)
#  expired_at :datetime
#  province   :string(255)
#  city       :string(255)
#  county     :string(255)
#  address    :string(255)
#  note       :string(255)
#  deleted    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  has_many :users
end
