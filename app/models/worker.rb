class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :last_name, :gender , presence: true
  belongs_to :role
  has_many :loads
  belongs_to :address
  belongs_to :branch_office
end
