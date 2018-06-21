class Comment4sController < ApplicationController
  before_action :set_comment4, only: [:show, :edit, :update, :destroy]

  # GET /comment4s
  # GET /comment4s.json
  def index
    @comment4s = Comment4.all
  end

  # GET /comment4s/1
  # GET /comment4s/1.json
  def show
  end

  # GET /comment4s/new
  def new
    @comment4 = Comment4.new
  end

  # GET /comment4s/1/edit
  def edit
  end

  # POST /comment4s
  # POST /comment4s.json
  def create
    @comment4 = Comment4.new(comment4_params)

    respond_to do |format|
      if @comment4.save
        format.html { redirect_to @comment4, notice: 'Comment4 was successfully created.' }
        format.json { render :show, status: :created, location: @comment4 }
      else
        format.html { render :new }
        format.json { render json: @comment4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment4s/1
  # PATCH/PUT /comment4s/1.json
  def update
    respond_to do |format|
      if @comment4.update(comment4_params)
        format.html { redirect_to @comment4, notice: 'Comment4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment4 }
      else
        format.html { render :edit }
        format.json { render json: @comment4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment4s/1
  # DELETE /comment4s/1.json
  def destroy
    @comment4.destroy
    respond_to do |format|
      format.html { redirect_to comment4s_url, notice: 'Comment4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment4
      @comment4 = Comment4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment4_params
      params.require(:comment4).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
