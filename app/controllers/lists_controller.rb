class ListsController < ApplicationController
  # GET /lists
  def index
    @lists = List.all
  end

  # GET /lists/1
  def show
    @list = List.find(params[:id])
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
  end

  # POST /lists
  def create
    @list = List.new(params[:list])

    respond_to do |format|
    if @list.save
      format.html {redirect_to @list, notice: 'List was successfully created.'}
      format.json {render json: @list}
    else
      format.html {render action: "new"}
    end
    end
  end

  # PUT /lists/1
  def update
    @list = List.find(params[:id])

    respond_to do |format|
    if @list.update_attributes(params[:list])
      format.html { redirect_to @list, notice: 'List was successfully updated.' }
      format.json { render json: @list}
    else
      format.html { render action: "edit" }
    end
    end
  end

  # DELETE /lists/1
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_url
  end
end
