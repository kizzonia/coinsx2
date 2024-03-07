class DepositsController < InheritedResources::Base
layout "accounts"
before_action :authenticate_user!
before_action :set_deposits, only: [:show, :edit, :update, :destroy]

def index
  @welcomes = Welcome.all

  @deposits = Deposit.where(user_id: current_user).order('created_at DESC')
  @accounts = Account.where(user_id: current_user).order('created_at DESC')

end

def show
  @pms = Pm.all.order('created_at DESC')
  @welcomes = Welcome.all
  @txhash = @deposit.txhashes.build

end

def new
  @welcomes = Welcome.all
  @pms = Pm.all.order('created_at ASC')
  @plans = Plan.all
  @deposit = current_user.deposits.build
end

def create
  @deposit = current_user.deposits.build(deposit_params)
  @deposit.user_id = current_user.id
  respond_to do |format|
    if @deposit.save
      user = User.find_by_id(@deposit.user_id)
      deposit = @deposit
      DepositMailer.deposit_email(user, deposit).deliver_later
      format.html { redirect_to @deposit, notice: 'We have received your deposit request we will contact you soon.' }
      format.json { render :show, status: :created, location: @deposit }
    else
      format.html { render :new }
      format.json { render json: @deposit.errors, status: :unprocessable_entity }
    end
  end
end
private
def set_deposits
  @deposit = Deposit.find(params[:id])
end

def deposit_params
  params.require(:deposit).permit(:payment_type, :amount, :email, :status, :plan, :user_id)
end

end
