class CharmItemsController < ApplicationController
  before_action :set_charm_item, only: [:show, :edit, :update, :destroy]

  # GET /charm_items
  # GET /charm_items.json
  def index
    @charm_items = CharmItem.all.sort_by { |e| e.Name}
  end

  # GET /charm_items/1
  # GET /charm_items/1.json
  def show
    #@str = render_to_string
    redirect_to "http://www.origamiowl.com/PWPShowProduct.ashx?ProgramProductId=#{@charm_item.ProductID}"
  end

  # GET /charm_items/new
  def new
    @charm_item = CharmItem.new
  end

  # GET /charm_items/1/edit
  def edit
  end

  # POST /charm_items
  # POST /charm_items.json
  def create
    @charm_item = CharmItem.new(charm_item_params)

    respond_to do |format|
      if @charm_item.save
        format.html { render action: 'new', notice: 'Charm item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @charm_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @charm_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charm_items/1
  # PATCH/PUT /charm_items/1.json
  def update
    respond_to do |format|
      if @charm_item.update(charm_item_params)
        @charm_item.destroy
        @charm_item = CharmItem.new(charm_item_params)
        @charm_item.save
        format.html { redirect_to :action => 'index', notice: 'Charm item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @charm_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charm_items/1
  # DELETE /charm_items/1.json
  def destroy
    @charm_item.destroy
    respond_to do |format|
      format.html { redirect_to charm_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charm_item
      @charm_item = CharmItem.find(params[:id].downcase)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charm_item_params
      params.require(:charm_item).permit(:Name, :ProductID)
    end
end
