class IndicesController < ApplicationController
  before_action :set_indices, only: [:show, :edit, :update, :destroy]

  # GET /indices
  # GET /indices.json
  def index
    @indices = Indice.all
  end

  # GET /indices/1
  # GET /indices/1.json
  def show
  end

  # GET /indices/new
  def new
    @indice = Indice.new
  end

  # GET /indices/1/edit
  def edit
  end

  # POST /indices
  # POST /indices.json
  def create
    @indice = Indice.new(indice_params)

    respond_to do |format|
      if @indice.save
        format.html { redirect_to @indice, notice: 'Indice was successfully created.' }
        format.json { render :show, status: :created, location: @indice }
      else
        format.html { render :new }
        format.json { render json: @indice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indices/1
  # PATCH/PUT /indices/1.json
  def update
    respond_to do |format|
      if @indice.update(indice_params)
        format.html { redirect_to @indice, notice: 'Indice was successfully updated.' }
        format.json { render :show, status: :ok, location: @indice }
      else
        format.html { render :edit }
        format.json { render json: @indice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indices/1
  # DELETE /indices/1.json
  def destroy
    @indice.destroy
    respond_to do |format|
      format.html { redirect_to indices_url, notice: 'Indice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indice
      @indice = Indice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indice_params
      params.require(:indice).permit(:indices_indice.rb)
    end
end
