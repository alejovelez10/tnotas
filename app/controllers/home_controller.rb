class HomeController < ApplicationController
  def index
  	@sliders = Slider.where(state:true).order(updated_at: :desc)
  	@suppliers = Supplier.where(state:true)
  	@catalogs = Catalog.where(state:true)
  	@categories = Category.where(state:true)
    @cat_cosmetics = Category.where(name: "Cosmeticos").first
    @cosmetics_c = @cat_cosmetics != nil ? SubCategory.where(category_id: @cat_cosmetics.id) : [] 

   
    @cat_cuadernos = Category.where(name: "Hogar").first
    @cuadernos_c = @cat_cuadernos != nil ? SubCategory.where(category_id: @cat_cuadernos.id): []
    
    @cat_sobres =  Category.where(name: "Lluvia de Sobres").first
    @sobres_c = @cat_cuadernos != nil ? SubCategory.where(category_id: @cat_sobres.id): []
    
    @destacados = Product.where(outstanding: true).order(updated_at: :desc)

@some_products = SomeProduct.where(state: true)
  	
  end

  def show_subCategoria
    @subcategoria = SubCategory.find(params[:id])
  end

  def show_categoria
    @categoria = Category.find(params[:id])
  end

  def about_us
  end

  def contact_us
  end
end
