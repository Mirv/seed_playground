class Comment20sController < ApplicationController
  before_action :set_comment20, only: [:show, :edit, :update, :destroy]

  # GET /comment20s
  # GET /comment20s.json
  def index
    @comment20s = Comment20.all
  end

  # GET /comment20s/1
  # GET /comment20s/1.json
  def show
  end

  # GET /comment20s/new
  def new
    @comment20 = Comment20.new
  end

  # GET /comment20s/1/edit
  def edit
  end

  # POST /comment20s
  # POST /comment20s.json
  def create
    @comment20 = Comment20.new(comment20_params)

    respond_to do |format|
      if @comment20.save
        format.html { redirect_to @comment20, notice: 'Comment20 was successfully created.' }
        format.json { render :show, status: :created, location: @comment20 }
      else
        format.html { render :new }
        format.json { render json: @comment20.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment20s/1
  # PATCH/PUT /comment20s/1.json
  def update
    respond_to do |format|
      if @comment20.update(comment20_params)
        format.html { redirect_to @comment20, notice: 'Comment20 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment20 }
      else
        format.html { render :edit }
        format.json { render json: @comment20.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment20s/1
  # DELETE /comment20s/1.json
  def destroy
    @comment20.destroy
    respond_to do |format|
      format.html { redirect_to comment20s_url, notice: 'Comment20 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment20
      @comment20 = Comment20.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment20_params
      params.require(:comment20).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
