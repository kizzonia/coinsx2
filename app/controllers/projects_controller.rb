class ProjectsController < InheritedResources::Base
  before_action :find_projects, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
def index
  @projects = Project.all.order('created_at DESC')
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
    def find_projects
      @project = Project.friendly.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :sub_title, :date, :category, :link, :recent, :slug, :body, :complete, :pimg)
    end

end
