class GuideItemsController < ApplicationController
  # GET /guide_items
  # GET /guide_items.json
  def index
    if params[:tag]
      @guide_items = GuideItem.tagged_with(params[:tag])
    else
      @guide_items = GuideItem.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guide_items }
    end
  end

  # GET /guide_items/1
  # GET /guide_items/1.json
  def show
    @guide_item = GuideItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guide_item }
    end
  end

  # GET /guide_items/new
  # GET /guide_items/new.json
  def new
    @guide_item = GuideItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guide_item }
    end
  end

  # GET /guide_items/1/edit
  def edit
    @guide_item = GuideItem.find(params[:id])
  end

  # POST /guide_items
  # POST /guide_items.json
  def create
    @guide_item = GuideItem.new(params[:guide_item])

    respond_to do |format|
      if @guide_item.save
        format.html { redirect_to @guide_item, notice: 'Guide item was successfully created.' }
        format.json { render json: @guide_item, status: :created, location: @guide_item }
      else
        format.html { render action: "new" }
        format.json { render json: @guide_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guide_items/1
  # PUT /guide_items/1.json
  def update
    @guide_item = GuideItem.find(params[:id])

    respond_to do |format|
      if @guide_item.update_attributes(params[:guide_item])
        format.html { redirect_to @guide_item, notice: 'Guide item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guide_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_items/1
  # DELETE /guide_items/1.json
  def destroy
    @guide_item = GuideItem.find(params[:id])
    @guide_item.destroy

    respond_to do |format|
      format.html { redirect_to guide_items_url }
      format.json { head :no_content }
    end
  end
end
