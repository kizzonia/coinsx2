class DepositMailer < ApplicationMailer
  default :from => "support@bcoinxprofits.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit
     mail(to: "support@fxmarkettrade.com", subject: 'deposit Request')
  end
end
