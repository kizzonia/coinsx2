class WalletsController < InheritedResources::Base
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @wallets = Wallet.all.order('created_at DESC')
  end
  private

    def wallet_params
      params.require(:wallet).permit(:btc, :barcode, :eth, :bch)
    end

end
