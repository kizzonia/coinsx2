class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable#, :confirmable, :lockable, :trackable
  validates_uniqueness_of :username
  has_many :deposits, dependent: :destroy
  has_many :withdraws, dependent: :destroy
  has_many :accounts, dependent: :destroy
  has_many :trades, dependent: :destroy

  has_many :trades, dependent: :destroy
  accepts_nested_attributes_for :trades


end
