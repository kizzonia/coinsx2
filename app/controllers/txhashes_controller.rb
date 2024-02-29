class TxhashesController < InheritedResources::Base
  layout "account"
    before_action :authenticate_user!
    def create
      @deposit = Deposit.find(params[:deposit_id])
      @txhashes = @deposit.txhashes.create(params[:txhash].permit(:txhash, :slug, :status, :deposit_id, :user_id))
         redirect_to deposits_path, notice: "Payment Submitted, Please wait for payment confirmations"

    end

  private

    def txhash_params
      params.require(:txhash).permit(:txhash, :slug, :status, :deposit_id, :user_id)
    end

end
