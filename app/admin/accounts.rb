ActiveAdmin.register Account do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :account_type, :wallet, :balance, :user_id, :first_name, :last_name, :address, :city, :state, :country, :zip_code, :slug, :rate, :compound, :roi, :currency, :tid, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:account_type, :wallet, :balance, :user_id, :first_name, :last_name, :address, :city, :state, :country, :zip_code, :slug, :rate, :compound, :roi, :currency, :tid, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # end
  form do |f|

     f.inputs do
       f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}, #{u.username}", u.id]}
       f.input :balance
       f.input :account_type
       f.input :status

     end
       f.submit :submit
     end

     controller do
            def find_resource
              scoped_collection.friendly.find(params[:id])
            end
          end
end
