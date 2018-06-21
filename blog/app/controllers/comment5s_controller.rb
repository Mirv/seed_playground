class Comment5sController < ApplicationController
  before_action :set_comment5, only: [:show, :edit, :update, :destroy]

  # GET /comment5s
  # GET /comment5s.json
  def index
    @comment5s = Comment5.all
  end

  # GET /comment5s/1
  # GET /comment5s/1.json
  def show
  end

  # GET /comment5s/new
  def new
    @comment5 = Comment5.new
  end

  # GET /comment5s/1/edit
  def edit
  end

  # POST /comment5s
  # POST /comment5s.json
  def create
    @comment5 = Comment5.new(comment5_params)

    respond_to do |format|
      if @comment5.save
        format.html { redirect_to @comment5, notice: 'Comment5 was successfully created.' }
        format.json { render :show, status: :created, location: @comment5 }
      else
        format.html { render :new }
        format.json { render json: @comment5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment5s/1
  # PATCH/PUT /comment5s/1.json
  def update
    respond_to do |format|
      if @comment5.update(comment5_params)
        format.html { redirect_to @comment5, notice: 'Comment5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment5 }
      else
        format.html { render :edit }
        format.json { render json: @comment5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment5s/1
  # DELETE /comment5s/1.json
  def destroy
    @comment5.destroy
    respond_to do |format|
      format.html { redirect_to comment5s_url, notice: 'Comment5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment5
      @comment5 = Comment5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment5_params
      params.require(:comment5).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
