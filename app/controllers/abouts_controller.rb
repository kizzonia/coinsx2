class AboutsController < InheritedResources::Base

  before_action :find_abouts, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @abouts = About.all.order('created_at DESC')
    @headers = Header.all.order('created_at DESC')
    @abouttrades = Abouttrade.all.order('created_at DESC')
    @tradeservices = Tradeservice.all.order('created_at ASC')
    @tradeplans = Tradeplan.all.order('created_at DESC')
    @fxsignals = Fxsignal.all.order('created_at DESC')
    @welcomes = Welcome.all
    @sections = Section.all
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
  @sections = Section.all
  @services = Service.all.order('created_at DESC')

  end

  private
  def find_abouts
    @about = About.friendly.find(params[:id])
  end
  def abouts_param
      params.require(:about).permit(:title, :body, :abtimg, :sub_title, :slug)
    end
end
