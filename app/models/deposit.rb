class Deposit < ApplicationRecord
  belongs_to :user
  # has_many :txhashs, dependent: :destroy
end
