ActiveAdmin.register Account do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :account_type, :wallet, :balance, :slug, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:account_type, :wallet, :balance, :slug, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|

     f.inputs do
  f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}, #{u.username}", u.id]}
       f.input :balance
       f.input :account_type
     end
       f.submit :submit
     end

     controller do
            def find_resource
              scoped_collection.friendly.find(params[:id])
            end
          end

end
