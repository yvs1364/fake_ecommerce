class BuysController < ApplicationController
   def create
     @product = Product.find(params[:product_id])
     @buy = Buy.new(params_buy)
     @buy.product = @product
     # @user = current_user
     @price = @product[:price]
     @totalprice = @price * params_buy[:quantity].to_i
    if @buy.save
      render "buys/create"
      flash[:alert] = "Yep"
    else
      redirect_to products_path
      flash[:alert] = "Nop"
    end
    # authorize @journey
   end

  private

  def params_buy
    params.require(:buy).permit(:quantity)
  end
end
