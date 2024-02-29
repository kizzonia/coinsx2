class PlansController < InheritedResources::Base
  before_action :find_plans, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @plans = Plan.all
  end

  def show
  end

  private
  def find_plans
    @plan = Plan.find(params[:id])
  end

    def plan_params
      params.require(:plan).permit(:amount, :name, :plan, :plan_name, :mini, :maxi, :referal, :duration, :body)
    end

end
