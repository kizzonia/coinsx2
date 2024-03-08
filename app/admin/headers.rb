ActiveAdmin.register Header do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :abouts_title,
    :abouts_sub_title,
     :services_title,
      :services_sub_title,
      :boards_title,
      :boards_sub_title,
       :features_title,
       :features_sub_title,
       :feedbacks_title,
        :feedbacks_sub_title,
         :blogs_title,
          :blogs_sub_title,
           :projects_title,
            :projects_sub_title,
             :cta1, :cta2,
              :headerimg,
              :plans_title,
              :plans_sub_title,
              :abouttrade_title,
              :abouttrade_sub_title,
              :tradeservices_title,
              :tradeservices_sub_title,
              :tradesignal_title,
              :tradesignal_sub_title,

              :servicemain_title,
              :servicemain_sub_title,
              :tradeplan_title,
              :tradeplan_sub_title,
              :deposit_title,
              :dins
  #
  # or
  #
  # permit_params do
  #   permitted = [:abouts_title, :abouts_sub_title, :services_title, :services_sub_title, :boards_title, :boards_sub_title, :features_title, :features_sub_title, :feedbacks_title, :feedbacks_sub_title, :blogs_title, :blogs_sub_title, :projects_title, :projects_sub_title, :cta1, :cta2, :counter1_title, :counter1, :counter2, :counter3, :counter2_title, :counter3_title, :headerimg]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
    f.inputs do


      para "headerimg"
      f.input :headerimg, as: :file


      para "abouts/who we are"
      f.input :abouts_title, placeholder: "About Us Header Title"
      f.input :abouts_sub_title

      para "About Trades"
      f.input :abouttrade_title, placeholder: "About Our Trades "
      f.input :abouttrade_sub_title, placeholder: "About Our Trades description"

      para "Service Main"
      f.input :servicemain_title, placeholder: "Masthead Service Title "
      f.input :servicemain_sub_title

      para "Services"

      f.input :services_title
      f.input :services_sub_title

      para "Trading services"
      f.input :tradeservices_title, placeholder: "Our Trading Services "
      f.input :tradeservices_sub_title


      para "features"

      f.input :features_title
      f.input :features_sub_title

      para "Trade Signals"

      f.input :tradesignal_title, placeholder: "Signal title "
      f.input :tradesignal_sub_title


      para "Feedback"

      f.input :feedbacks_title
      f.input :feedbacks_sub_title


      para "Plans"
      f.input :plans_title
      f.input :plans_sub_title


      para "Trade Plans"
    f.input :tradeplan_title
    f.input :tradeplan_sub_title

      para "projects/events"

      f.input :projects_title, placeholder: "products, special sale, or projects header"
      f.input :projects_sub_title


      para "blog"

      f.input :blogs_title
      f.input :blogs_sub_title

      para "AGent"
      f.input :boards_title, placeholder: "Teams/Agent/Board header"
      f.input :boards_sub_title

      para "call to action-1"
      f.input :cta1
      f.input :cta2

      para "Deposit Title & desc"
      f.input :deposit_title
      f.input :dins,  as: :quill_editor

    end
    f.actions
  end
end
