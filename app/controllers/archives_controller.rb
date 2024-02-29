class ArchivesController < InheritedResources::Base

  def index
    @headers = Header.all.order('created_at DESC')

    @fxsignals = Fxsignal.all.order('created_at DESC')
    @archives = Archive.all.order('created_at ASC')


  end

  def show
  end

  private
  def find_plans
    @archive = Archive.find(params[:id])
  end

    def archive_params
      params.require(:archive).permit(:title, :month, :year, :slug, :archimg)
    end

end
