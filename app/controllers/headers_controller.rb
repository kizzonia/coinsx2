class HeadersController < InheritedResources::Base
  before_action :authenticate_adminuser!, except: [:index, :show]

  private

    def header_params
      params.require(:header).permit(:abouts_title, :headerimg, :abouts_sub_title,
        :cta1, :cta2, :services_title,
        :tradeplan_title,
        :tradeplan_sub_title,
         :services_sub_title,
         :features_title,
          :features_sub_title,
           :blogs_title,
           :blogs_sub_title,
            :boards_title,
             :boards_sub_title,
             :feedbacks_title,
             :feedbacks_sub_title,
             :projects_title,
             :projects_sub_title,
             :abouttrade_title,
             :abouttrade_sub_title,
             :tradeservices_title,
             :tradeservices_sub_title,
             :tradesignal_title,
             :tradesignal_sub_title,
             :box1,
             :box1_text,
             :box2,
             :box2_text,
             :box3,
             :box3_text,
             :servicemain_title,
             :servicemain_sub_title)
    end

end
