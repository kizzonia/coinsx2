class Team < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :teamimg, TeamimgUploader

end
