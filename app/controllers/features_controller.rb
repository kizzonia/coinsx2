class FeaturesController < InheritedResources::Base

  before_action :find_features, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
def index
  @features = Feature.all
end
def show
  @abouts = About.all.order('created_at DESC')
    @headers = Header.all.order('created_at DESC')
    @abouttrades = Abouttrade.all.order('created_at DESC')
    @tradeservices = Tradeservice.all.order('created_at ASC')
    @tradeplans = Tradeplan.all.order('created_at DESC')
    @fxsignals = Fxsignal.all.order('created_at DESC')

    @services = Service.all.order('created_at DESC')

end
  private
    def find_features
      @feature = Feature.friendly.find(params[:id])
    end
    def feature_params
      params.require(:feature).permit(:fimg, :title, :sub_title, :body, :slug)
    end

end
