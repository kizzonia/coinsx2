ActiveAdmin.register Tradeplan do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :plan, :plan_name, :mini, :maxi, :amount, :duration, :body, :slug
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :plan, :plan_name, :mini, :maxi, :amount, :duration, :body, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :name
      f.input :amount
      f.input :plan_name
      f.input :duration, as: :select, :collection => [ "Daily", "Monthly", "weekly", "yearly"]
      f.input :mini, placeholder: "minmum investment"
      f.input :maxi, placeholder: "Maximum Investment"
      f.input :body, as: :ckeditor

    f.actions
  end
end
end
