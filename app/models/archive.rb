class Archive < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :fxsignals, dependent: :destroy

end
