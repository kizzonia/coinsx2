class WithdrawMailer < ApplicationMailer
  default :from => "support@bcoinxprofits.com"
  def withdraw_email(user, withdraw)
    @user = user
    @withdraw = withdraw
    mail(to: user.email, subject: 'Your WITHDRAWAL REQUEST Has Been Created')
  end
end
