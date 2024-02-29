class TradeplansController < InheritedResources::Base

  before_action :find_tradeplans, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @tradeplans = Tradeplan.all
  end

  def show
  end

  private
  def find_plans
    @tradeplan = Tradeplan.friendly.find(params[:id])
  end

    def tradeplan_params
      params.require(:tradeplan).permit(:name, :plan_name, :mini, :max, :amount, :duration, :body, :slug)
    end

end
