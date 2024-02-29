class BannersController < InheritedResources::Base
  before_action :authenticate_adminuser!, except: [:index, :show]

  private

    def banner_params
      params.require(:banner).permit(:bannerimg, :title, :sub_title)
    end

end
