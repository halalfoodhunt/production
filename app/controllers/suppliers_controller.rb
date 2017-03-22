class SuppliersController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  # GET /suppliers
  # GET /suppliers.json
  def index
    @search = Supplier.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @suppliers = @search.result.where(draft: false)
    @qualifying_type = QualifyingType.all
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
  end

  # GET /suppliers/new
  def new
    @current_merchant = current_merchant
    @listing = Listing.all.order('created_at DESC').limit(1)
    @supplier = Supplier.new(listing_id: params[:listing_id])
  end

  # GET /suppliers/1/edit
  def edit
  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    @supplier = current_merchant.suppliers.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        format.html { redirect_to @supplier, notice: 'Supplier was successfully created.' }
        format.json { render :show, status: :created, location: @supplier }
      else
        format.html { render :new }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
    @supplier.food_type_ids = params[:supplier][:food_type_ids]
    @supplier.supplier_highlight_ids = params[:supplier][:supplier_highlight_ids]
  end

  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to @supplier, notice: 'Supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
    @supplier.food_type_ids = params[:supplier][:food_type_ids]
    @supplier.supplier_highlight_ids = params[:supplier][:supplier_highlight_ids]
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def edit_multiple
  @suppliers = Supplier.friendly.find(params[:supplier_ids])
  end

  def update_multiple
  @suppliers = Supplier.friendly.update(params[:suppliers].keys, params[:suppliers].values)
  @suppliers.reject! { |p| p.errors.empty? }
  if @suppliers.empty?
    redirect_to pages_suppliers_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
       @supplier = Supplier.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
      params.require(:supplier).permit(:business_name, :general_contact_number, :general_email, :operating_address, :facebook, :instagram, :website, :preferred_contact, :preferred_order_method, :question_1, :question_2, :question_3, :question_4, :question_5, :delivery_url, :friends_code, :expiry_date, :halal_expiry, :friends_terms, :merchant_id, :listing_id, :draft, :verified, :logo, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, :friends_reward_id, :region_id, :location_id, :supplier_type_id, :price_range_id, :qualifying_type_id, food_type_ids: [], supplier_highlight_ids: [] )
    end
end
