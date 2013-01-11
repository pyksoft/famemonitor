class FanPagesController < ApplicationController
  # GET /fan_pages
  # GET /fan_pages.json
  def index
    @fan_pages = FanPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fan_pages }
    end
  end

  # GET /fan_pages/1
  # GET /fan_pages/1.json
  def show
    @fan_page = FanPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fan_page }
    end
  end

  # GET /fan_pages/new
  # GET /fan_pages/new.json
  def new
    @fan_page = FanPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fan_page }
    end
  end

  # GET /fan_pages/1/edit
  def edit
    @fan_page = FanPage.find(params[:id])
  end

  # POST /fan_pages
  # POST /fan_pages.json
  def create
    @fan_page = FanPage.new(params[:fan_page])

    respond_to do |format|
      if @fan_page.save
        format.html { redirect_to @fan_page, notice: 'Fan page was successfully created.' }
        format.json { render json: @fan_page, status: :created, location: @fan_page }
      else
        format.html { render action: "new" }
        format.json { render json: @fan_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fan_pages/1
  # PUT /fan_pages/1.json
  def update
    @fan_page = FanPage.find(params[:id])

    respond_to do |format|
      if @fan_page.update_attributes(params[:fan_page])
        format.html { redirect_to @fan_page, notice: 'Fan page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fan_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fan_pages/1
  # DELETE /fan_pages/1.json
  def destroy
    @fan_page = FanPage.find(params[:id])
    @fan_page.destroy

    respond_to do |format|
      format.html { redirect_to fan_pages_url }
      format.json { head :no_content }
    end
  end
end
