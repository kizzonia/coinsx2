class PmsController < InheritedResources::Base
  before_action :authenticate_adminuser!, except: [:index, :show]

  private

    def pm_params
      params.require(:pm).permit(:title, :walletimg, :icon, :address)
    end

end
