class Comment8sController < ApplicationController
  before_action :set_comment8, only: [:show, :edit, :update, :destroy]

  # GET /comment8s
  # GET /comment8s.json
  def index
    @comment8s = Comment8.all
  end

  # GET /comment8s/1
  # GET /comment8s/1.json
  def show
  end

  # GET /comment8s/new
  def new
    @comment8 = Comment8.new
  end

  # GET /comment8s/1/edit
  def edit
  end

  # POST /comment8s
  # POST /comment8s.json
  def create
    @comment8 = Comment8.new(comment8_params)

    respond_to do |format|
      if @comment8.save
        format.html { redirect_to @comment8, notice: 'Comment8 was successfully created.' }
        format.json { render :show, status: :created, location: @comment8 }
      else
        format.html { render :new }
        format.json { render json: @comment8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment8s/1
  # PATCH/PUT /comment8s/1.json
  def update
    respond_to do |format|
      if @comment8.update(comment8_params)
        format.html { redirect_to @comment8, notice: 'Comment8 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment8 }
      else
        format.html { render :edit }
        format.json { render json: @comment8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment8s/1
  # DELETE /comment8s/1.json
  def destroy
    @comment8.destroy
    respond_to do |format|
      format.html { redirect_to comment8s_url, notice: 'Comment8 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment8
      @comment8 = Comment8.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment8_params
      params.require(:comment8).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
