class ServicesController < InheritedResources::Base
  before_action :find_services, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
def index
  @blogs = Blog.all.order('created_at DESC')
  @headers = Header.all.order('created_at DESC')
  @welcomes = Welcome.all

        @plans = Plan.all.order('created_at ASC')
        @abouts = About.all.order('created_at DESC')
        @headers = Header.all.order('created_at DESC')
        @abouttrades = Abouttrade.all.order('created_at DESC')
        @tradeservices = Tradeservice.all.order('created_at ASC')
        @tradeplans = Tradeplan.all.order('created_at DESC')
        @fxsignals = Fxsignal.all.order('created_at DESC')

        @services = Service.all.order('created_at DESC')
        @faqs = Faq.all.order('created_at DESC')
        @blogs = Blog.all.order('created_at DESC')
        @feedbacks = Feedback.all.order('created_at DESC')
        @features = Feature.all.order('created_at DESC')
        @banners = Banner.all.order('created_at ASC')
        @sections = Section.all.order('created_at DESC')
        @boards = Board.all.order('created_at DESC')

end
def show
  @abouts = About.all.order('created_at DESC')
    @headers = Header.all.order('created_at DESC')
    @abouttrades = Abouttrade.all.order('created_at DESC')
    @tradeservices = Tradeservice.all.order('created_at ASC')
    @tradeplans = Tradeplan.all.order('created_at DESC')
    @fxsignals = Fxsignal.all.order('created_at DESC')
    @welcomes = Welcome.all
    @plans = Plan.all

    @services = Service.all.order('created_at DESC')

end
  private
    def find_services
      @service = Service.friendly.find(params[:id])
    end
    def service_params
      params.require(:service).permit(:title, :serviceimg,  :icon, :sub_title, :body, :slug)
    end

end
