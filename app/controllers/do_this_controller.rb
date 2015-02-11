class DoThisController < ApplicationController
  before_action :set_do_thi, only: [:show, :edit, :update, :destroy]

  # GET /do_this
  # GET /do_this.json
  def index
    @do_this = DoThi.all
  end

  # GET /do_this/1
  # GET /do_this/1.json
  def show
  end

  # GET /do_this/new
  def new
    @do_thi = DoThi.new
  end

  # GET /do_this/1/edit
  def edit
  end

  # POST /do_this
  # POST /do_this.json
  def create
    @do_thi = DoThi.new(do_thi_params)

    respond_to do |format|
      if @do_thi.save
        format.html { redirect_to @do_thi, notice: 'Do thi was successfully created.' }
        format.json { render :show, status: :created, location: @do_thi }
      else
        format.html { render :new }
        format.json { render json: @do_thi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /do_this/1
  # PATCH/PUT /do_this/1.json
  def update
    respond_to do |format|
      if @do_thi.update(do_thi_params)
        format.html { redirect_to @do_thi, notice: 'Do thi was successfully updated.' }
        format.json { render :show, status: :ok, location: @do_thi }
      else
        format.html { render :edit }
        format.json { render json: @do_thi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /do_this/1
  # DELETE /do_this/1.json
  def destroy
    @do_thi.destroy
    respond_to do |format|
      format.html { redirect_to do_this_url, notice: 'Do thi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_do_thi
      @do_thi = DoThi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def do_thi_params
      params.require(:do_thi).permit(:title, :notes, :due, :done)
    end
end
