class OptionsController < ApplicationController
  # GET /options
  # GET /options.json
  def index
    @options = Option.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @options }
    end
  end

  # GET /options/1
  # GET /options/1.json
  def show
    @option = Option.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @option }
    end
  end

  # GET /options/new
  # GET /options/new.json
  def new
    @option = Option.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @option }
    end
  end

  # GET /options/1/edit
  def edit
    @option = Option.find(params[:id])
  end

  # POST /options
  # POST /options.json
  def create
    @option = Option.new(params[:option])

    respond_to do |format|
      if @option.save
        format.html { redirect_to @option, notice: 'Option was successfully created.' }
        format.json { render json: @option, status: :created, location: @option }
      else
        format.html { render action: "new" }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /options/1
  # PUT /options/1.json
  def update
    @option = Option.find(params[:id])

    respond_to do |format|
      if @option.update_attributes(params[:option])
        format.html { redirect_to @option, notice: 'Option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    @option = Option.find(params[:id])
    @option.destroy

    respond_to do |format|
      format.html { redirect_to options_url }
      format.json { head :no_content }
    end
  end
end
