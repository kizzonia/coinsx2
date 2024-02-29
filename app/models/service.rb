class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :serviceimg, ServiceimgUploader
  mount_uploader :icon, IconUploader


end
