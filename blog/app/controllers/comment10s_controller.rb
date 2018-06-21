class Comment10sController < ApplicationController
  before_action :set_comment10, only: [:show, :edit, :update, :destroy]

  # GET /comment10s
  # GET /comment10s.json
  def index
    @comment10s = Comment10.all
  end

  # GET /comment10s/1
  # GET /comment10s/1.json
  def show
  end

  # GET /comment10s/new
  def new
    @comment10 = Comment10.new
  end

  # GET /comment10s/1/edit
  def edit
  end

  # POST /comment10s
  # POST /comment10s.json
  def create
    @comment10 = Comment10.new(comment10_params)

    respond_to do |format|
      if @comment10.save
        format.html { redirect_to @comment10, notice: 'Comment10 was successfully created.' }
        format.json { render :show, status: :created, location: @comment10 }
      else
        format.html { render :new }
        format.json { render json: @comment10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment10s/1
  # PATCH/PUT /comment10s/1.json
  def update
    respond_to do |format|
      if @comment10.update(comment10_params)
        format.html { redirect_to @comment10, notice: 'Comment10 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment10 }
      else
        format.html { render :edit }
        format.json { render json: @comment10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment10s/1
  # DELETE /comment10s/1.json
  def destroy
    @comment10.destroy
    respond_to do |format|
      format.html { redirect_to comment10s_url, notice: 'Comment10 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment10
      @comment10 = Comment10.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment10_params
      params.require(:comment10).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
