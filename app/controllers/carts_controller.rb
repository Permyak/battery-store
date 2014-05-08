class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def checkout
	Purchase.create(:cart => current_user.cart, :user => current_user)
	
	current_user.cart=Cart.create
	
	redirect_to (current_user.cart), notice: 'Заказ оформлен'
  end
  
  def clear
    Batteries_cart.where("cart_id = ?", current_user.cart.id).each do |buy|
		  buy.destroy
		end
  end
  
  def remove
    if signed_in?
		Batteries_cart.where("cart_id = ? AND battery_id = ?", current_user.cart.id, (Battery.find_by code:params["battery"]).id).each do |buy|
		  buy.destroy
		end
		redirect_to (current_user.cart), notice: 'Батарея удалена из корзины'
	else
	redirect_to (signin_path)	
	end
  end
  
  def add
    if signed_in?
		@buy = Batteries_cart.new(:cart_id => current_user.cart.id, :battery_id => (Battery.find_by code:params["battery"]).id)
		if @buy.valid?
		   @buy.save
		   params["text"]="save"
		 else
		   @errors += categories.errors
		 end
		redirect_to (Battery.find_by code:params["battery"]), notice: 'Батарея добавлена в корзину'
	else
	redirect_to (signin_path)	
	end
  end
  
  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cart }
      else
        format.html { render action: 'new' }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:user_id)
    end
end
