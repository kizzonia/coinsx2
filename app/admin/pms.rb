ActiveAdmin.register Pm do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :walletimg, :address, :icon
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :walletimg, :address, :icon]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :title, placeholde: "Wallet Name "
      f.input :address, placeholder: " Wallet"
      f.input :walletimg, :as => :file, label: "Wallet Barcode"
      f.input :con, label: "Icon"


    end
    f.actions
  end
end
