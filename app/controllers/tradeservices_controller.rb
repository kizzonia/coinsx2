class TradeservicesController < InheritedResources::Base
  before_action :find_tradeservices, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
  @tradeservices = Tradeservice.all.order('created_at ASC')
  @headers = Header.all

  end
  def show
@abouts = About.all.order('created_at DESC')
  @headers = Header.all.order('created_at DESC')
  @abouttrades = Abouttrade.all.order('created_at DESC')
  @tradeservices = Tradeservice.all.order('created_at ASC')
  @tradeplans = Tradeplan.all.order('created_at DESC')
  @fxsignals = Fxsignal.all.order('created_at DESC')
  @welcomes = Welcome.all

  @services = Service.all.order('created_at DESC')

  end
  private
    def find_tradeservices
      @tradeservice = Tradeservice.friendly.find(params[:id])
    end

    def tradeservice_params
      params.require(:tradeservice).permit(:title, :sub_title, :body, :slug)
    end

end
