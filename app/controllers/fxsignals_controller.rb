class FxsignalsController < InheritedResources::Base
  before_action :find_fx, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @headers = Header.all.order('created_at DESC')

    @fxsignals = Fxsignal.all.order('created_at DESC')

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
  def find_fx
    @fxsignal = Fxsignal.find(params[:id])
  end
    def fxsignal_params
      params.require(:fxsignal).permit(:body,
         :entry_point,
          :exit_point,
           :slug,
            :stop_loss,
             :sell_point1,
             :sell_point2,
              :tradetype,
              :odds,
               :date,
               :leverage,
           :call_type,
           :exchange,
           :stop_loss,
          :sub, :info, :archive_id )
    end

end
