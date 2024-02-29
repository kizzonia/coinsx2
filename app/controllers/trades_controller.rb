class TradesController < InheritedResources::Base
  layout "accounts"
  before_action :authenticate_user!
  def index
    @trades = Trade.where(user_id: current_user).order("created_at DESC")

        @users = User.where(user_id: current_user)
        @accounts = Account.where(user_id: current_user).order('created_at DESC')
      
  end
  private

    def trade_params
      params.require(:trade).permit(:currency, :deposit, :expiration, :status, :tradetype, :entry, :rate, :return, :user_id)
    end

end
