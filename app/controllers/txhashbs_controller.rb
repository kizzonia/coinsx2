class TxhashbsController < InheritedResources::Base
  layout "account"
    before_action :authenticate_user!
    def create
      @subscription = Subscription.find(params[:subscription_id])
      @txhashb = @subscription.txhashbs.create(params[:txhashb].permit(:txhash, :slug, :status, :subscription_id, :user_id))
         redirect_to subscriptions_path, notice: "Payment Submitted, Please wait for payment confirmations"

    end

  private

    def txhash_params
      params.require(:txhashb).permit(:txhash, :slug, :status, :subscription_id, :user_id)
    end

end
