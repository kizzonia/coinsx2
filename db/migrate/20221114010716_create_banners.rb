class CreateBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :banners do |t|
      t.string :bannerimg
      t.string :title
      t.string :sub_title

      t.timestamps
    end
  end
end
