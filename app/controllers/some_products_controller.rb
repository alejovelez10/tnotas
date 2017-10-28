class SomeProductsController < ApplicationController
  before_action :set_some_product, only: [:show, :edit, :update, :destroy]

  # GET /some_products
  # GET /some_products.json
  def index
    @some_products = SomeProduct.all
  end

  # GET /some_products/1
  # GET /some_products/1.json
  def show
  end

  # GET /some_products/new
  def new
    @some_product = SomeProduct.new
  end

  # GET /some_products/1/edit
  def edit
  end

  # POST /some_products
  # POST /some_products.json
  def create
    @some_product = SomeProduct.new(some_product_params)

    respond_to do |format|
      if @some_product.save
        format.html { redirect_to @some_product, notice: 'Some product was successfully created.' }
        format.json { render :show, status: :created, location: @some_product }
      else
        format.html { render :new }
        format.json { render json: @some_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /some_products/1
  # PATCH/PUT /some_products/1.json
  def update
    respond_to do |format|
      if @some_product.update(some_product_params)
        format.html { redirect_to @some_product, notice: 'Some product was successfully updated.' }
        format.json { render :show, status: :ok, location: @some_product }
      else
        format.html { render :edit }
        format.json { render json: @some_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /some_products/1
  # DELETE /some_products/1.json
  def destroy
    @some_product.destroy
    respond_to do |format|
      format.html { redirect_to some_products_url, notice: 'Some product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_some_product
      @some_product = SomeProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def some_product_params
      params.require(:some_product).permit(:name, :description, :user_id, :state, :image)
    end
end
