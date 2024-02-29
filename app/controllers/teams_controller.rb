class TeamsController < InheritedResources::Base

  before_action :find_teams, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
def index
  @teams = Team.all
end
def show

end
  private
    def find_teams
      @team = Team.friendly.find(params[:id])
    end
    def team_params
      params.require(:team).permit(:title, :teamimg, :slug, :body, :position, :whatsapp, :ln, :ig)
    end

end
