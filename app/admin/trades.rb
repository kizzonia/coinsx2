ActiveAdmin.register Trade do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :currency, :deposit, :expiration, :plan,
:enddate,
:goal,
:bonus,
:current, :status, :tradetype, :entry, :rate, :return, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:currency, :deposit, :expiration, :status, :tradetype, :entry, :rate, :return, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|

      f.inputs do
   f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
        f.input :currency, :as => :select, :collection => ['BTC/USD', 'ETH/USD', 'LTC/USD', 'BCH/GB', 'EOS/USD']
        f.input :deposit
        f.input :expiration
        f.input :plan
        f.input :enddate
         f.input :goal
          f.input :bonus
          f.input :current
        f.input :status
        f.input :tradetype
        f.input :entry
        f.input :rate
        f.input :return
      end
      f.submit :submit
    end

end
