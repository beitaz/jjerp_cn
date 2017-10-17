# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string(255)      not null
#  phone                  :string(255)
#  category               :integer          default(1)
#  deleted                :boolean
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

class User < ApplicationRecord
  belongs_to :company
  has_attached_file :avatar, styles: { medium: '300x300#', thumb: '100x100#' }
  validates_attachment :avatar, content_type: { content_type: /\Aimage\/.*\z/ }, less_than: 1.megabytes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save :auto_complete

  def admin?
    category.zero?
  end

  private

  def auto_complete
    self.username ||= Faker::Name.unique.name
    self.phone ||= Faker::PhoneNumber.unique.phone_number
  end
end
