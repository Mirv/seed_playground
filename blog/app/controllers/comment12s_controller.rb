class Comment12sController < ApplicationController
  before_action :set_comment12, only: [:show, :edit, :update, :destroy]

  # GET /comment12s
  # GET /comment12s.json
  def index
    @comment12s = Comment12.all
  end

  # GET /comment12s/1
  # GET /comment12s/1.json
  def show
  end

  # GET /comment12s/new
  def new
    @comment12 = Comment12.new
  end

  # GET /comment12s/1/edit
  def edit
  end

  # POST /comment12s
  # POST /comment12s.json
  def create
    @comment12 = Comment12.new(comment12_params)

    respond_to do |format|
      if @comment12.save
        format.html { redirect_to @comment12, notice: 'Comment12 was successfully created.' }
        format.json { render :show, status: :created, location: @comment12 }
      else
        format.html { render :new }
        format.json { render json: @comment12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment12s/1
  # PATCH/PUT /comment12s/1.json
  def update
    respond_to do |format|
      if @comment12.update(comment12_params)
        format.html { redirect_to @comment12, notice: 'Comment12 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment12 }
      else
        format.html { render :edit }
        format.json { render json: @comment12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment12s/1
  # DELETE /comment12s/1.json
  def destroy
    @comment12.destroy
    respond_to do |format|
      format.html { redirect_to comment12s_url, notice: 'Comment12 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment12
      @comment12 = Comment12.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment12_params
      params.require(:comment12).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
