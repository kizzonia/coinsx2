ActiveAdmin.register Fxsignal do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :body,
  :entry_point,
  :exit_point,
   :slug,
    :stop_loss,
    :sell_point1,
     :sell_point2,
      :tradetype,
      :odds,
       :status,
        :date,
        :pairs,
        :leverage,
    :call_type,
    :exchange,
    :stop_loss,
    :sub,
    :info,
    :archive_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:body, :entry_point, :exit_point, :slug, :stop_loss, :sell_point1, :sell_point2, :tradetype, :odds, :status, :date, :pairs]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do

    para "Entry & Exit"
      f.input :entry_point
      f.input :exit_point

    para "Sell Point/Take Profit"
      f.input :sell_point1
      f.input :sell_point2

    para "TradeTypes "
      f.input :tradetype,  as: :select, :collection => [ "IntraDay", "Long", "Short"]
      f.input :pairs
      f.input :odds

    para "TimeLine"
      f.input :info, as: :select, :collection => ["current", "paid", "close", "running"]
      f.input :status
      f.input :date
      f.input :sub
      f.input :stop_loss
      # f.input :archive_id, :label => 'Archive', :as => :select, :collection => Archive.all.map{|u| ["#{u.month}, #{u.year}", u.id]}


      para "Exchange"
        f.input :exchange
        f.input :call_type,  as: :select, :collection => [ "Long", "Short"]
        f.input :leverage

    end
      f.submit :submit
  end


end
