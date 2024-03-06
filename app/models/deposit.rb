class Deposit < ApplicationRecord
  belongs_to :user
  # has_many :txhashes, dependent: :destroy
end
