class ContactsController < InheritedResources::Base
    before_action :authenticate_adminuser!, except: [:new, :create]
  def new
    @plans = Plan.all.order('created_at ASC')

    @feedbacks = Feedback.all.order('created_at DESC')
    @welcomes = Welcome.all


    @contact = Contact.new
  end

  def create
    @headers = Header.all

    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        contact = @contact
        ContactMailer.contact_email(contact).deliver_later
        format.html { redirect_to root_path, notice: 'Thank You. we get back to you right away' }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  private

    def contact_params
      params.require(:contact).permit(:name, :email, :body, :phone, :website)
    end

end
