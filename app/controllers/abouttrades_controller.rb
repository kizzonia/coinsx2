class AbouttradesController < InheritedResources::Base
  before_action :find_abouttrades, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
  @abouttrades = Abouttrade.all.order('created_at ASC')
  @headers = Header.all
  @abouts = About.all.order('created_at DESC')
@headers = Header.all.order('created_at DESC')
@tradeservices = Tradeservice.all.order('created_at ASC')
@tradeplans = Tradeplan.all.order('created_at DESC')
@fxsignals = Fxsignal.all.order('created_at DESC')
@welcomes = Welcome.all

@services = Service.all.order('created_at DESC')

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
    def find_abouttrades
      @abouttrade = Abouttrade.friendly.find(params[:id])
    end
    def abouttrade_params
      params.require(:abouttrade).permit(:title, :sub_title, :body, :link, :slug, :icon, :abouttradeimg)
    end

end
