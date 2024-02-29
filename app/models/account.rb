class Account < ApplicationRecord
  require 'httparty'
  extend FriendlyId
  friendly_id :first_name, use: :slugged

  belongs_to :user
  validates :user, presence: true
  validates :wallet, presence: true, uniqueness: true
  before_validation :load_defaults
  def load_defaults
    if self.new_record?
      self.balance = 0.00
      self.status = "false"
    end
  end
end
