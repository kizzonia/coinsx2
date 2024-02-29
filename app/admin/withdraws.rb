ActiveAdmin.register Withdraw do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :amount, :payment_type, :email, :status, :wallet, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:amount, :payment_type, :email, :status, :wallet, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|

     f.inputs do
  f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}, #{u.username}", u.id]}
       f.input :amount
       f.input :payment_type
       f.input :wallet
       f.input :status
     end
       f.submit :submit
     end

end
