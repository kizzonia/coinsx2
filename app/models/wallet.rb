class Wallet < ApplicationRecord
  mount_uploader :barcode, BarcodeUploader

end
