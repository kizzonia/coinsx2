class ProductsController < InheritedResources::Base

  before_action :find_products, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
def index
  @products = Product.all.order('created_at DESC')
end
def show

end
  private
    def find_products
      @product = Product.friendly.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :sub_title, :price, :pimg, :link, :slug)
    end

end
