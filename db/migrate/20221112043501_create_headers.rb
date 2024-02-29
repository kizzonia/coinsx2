class CreateHeaders < ActiveRecord::Migration[6.1]
  def change
    create_table :headers do |t|
      t.string :abouts_title
      t.string :abouts_sub_title
      t.string :services_title
      t.string :services_sub_title
      t.string :boards_title
      t.string :boards_sub_title
      t.string :features_title
      t.string :features_sub_title
      t.string :feedbacks_title
      t.string :feedbacks_sub_title
      t.string :blogs_title
      t.string :blogs_sub_title
      t.string :projects_title
      t.string :projects_sub_title
      t.string :cta1
      t.string :cta2
      t.string :headerimg
      t.string :plans_title
      t.string :plans_sub_title
      t.string :abouttrade_title
      t.string :abouttrade_sub_title
      t.string :tradeservices_title
      t.string :tradeservices_sub_title
      t.string :tradesignal_title
      t.string :tradesignal_sub_title
      t.string :servicemain_title
      t.string :servicemain_sub_title
      t.string :tradeplan_title
      t.string :tradeplan_sub_title

      t.timestamps
    end
  end
end
