class Comment16sController < ApplicationController
  before_action :set_comment16, only: [:show, :edit, :update, :destroy]

  # GET /comment16s
  # GET /comment16s.json
  def index
    @comment16s = Comment16.all
  end

  # GET /comment16s/1
  # GET /comment16s/1.json
  def show
  end

  # GET /comment16s/new
  def new
    @comment16 = Comment16.new
  end

  # GET /comment16s/1/edit
  def edit
  end

  # POST /comment16s
  # POST /comment16s.json
  def create
    @comment16 = Comment16.new(comment16_params)

    respond_to do |format|
      if @comment16.save
        format.html { redirect_to @comment16, notice: 'Comment16 was successfully created.' }
        format.json { render :show, status: :created, location: @comment16 }
      else
        format.html { render :new }
        format.json { render json: @comment16.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment16s/1
  # PATCH/PUT /comment16s/1.json
  def update
    respond_to do |format|
      if @comment16.update(comment16_params)
        format.html { redirect_to @comment16, notice: 'Comment16 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment16 }
      else
        format.html { render :edit }
        format.json { render json: @comment16.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment16s/1
  # DELETE /comment16s/1.json
  def destroy
    @comment16.destroy
    respond_to do |format|
      format.html { redirect_to comment16s_url, notice: 'Comment16 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment16
      @comment16 = Comment16.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment16_params
      params.require(:comment16).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
