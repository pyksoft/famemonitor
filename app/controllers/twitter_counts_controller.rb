class TwitterCountsController < ApplicationController
  # GET /twitter_counts
  # GET /twitter_counts.json
  def index
    @twitter_counts = TwitterCount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @twitter_counts }
    end
  end

  # GET /twitter_counts/1
  # GET /twitter_counts/1.json
  def show
    @twitter_count = TwitterCount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twitter_count }
    end
  end

  # GET /twitter_counts/new
  # GET /twitter_counts/new.json
  def new
    @twitter_count = TwitterCount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twitter_count }
    end
  end

  # GET /twitter_counts/1/edit
  def edit
    @twitter_count = TwitterCount.find(params[:id])
  end

  # POST /twitter_counts
  # POST /twitter_counts.json
  def create
    @twitter_count = TwitterCount.new(params[:twitter_count])

    respond_to do |format|
      if @twitter_count.save
        format.html { redirect_to @twitter_count, notice: 'Twitter count was successfully created.' }
        format.json { render json: @twitter_count, status: :created, location: @twitter_count }
      else
        format.html { render action: "new" }
        format.json { render json: @twitter_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /twitter_counts/1
  # PUT /twitter_counts/1.json
  def update
    @twitter_count = TwitterCount.find(params[:id])

    respond_to do |format|
      if @twitter_count.update_attributes(params[:twitter_count])
        format.html { redirect_to @twitter_count, notice: 'Twitter count was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twitter_count.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitter_counts/1
  # DELETE /twitter_counts/1.json
  def destroy
    @twitter_count = TwitterCount.find(params[:id])
    @twitter_count.destroy

    respond_to do |format|
      format.html { redirect_to twitter_counts_url }
      format.json { head :no_content }
    end
  end
end
