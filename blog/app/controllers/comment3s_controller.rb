class Comment3sController < ApplicationController
  before_action :set_comment3, only: [:show, :edit, :update, :destroy]

  # GET /comment3s
  # GET /comment3s.json
  def index
    @comment3s = Comment3.all
  end

  # GET /comment3s/1
  # GET /comment3s/1.json
  def show
  end

  # GET /comment3s/new
  def new
    @comment3 = Comment3.new
  end

  # GET /comment3s/1/edit
  def edit
  end

  # POST /comment3s
  # POST /comment3s.json
  def create
    @comment3 = Comment3.new(comment3_params)

    respond_to do |format|
      if @comment3.save
        format.html { redirect_to @comment3, notice: 'Comment3 was successfully created.' }
        format.json { render :show, status: :created, location: @comment3 }
      else
        format.html { render :new }
        format.json { render json: @comment3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment3s/1
  # PATCH/PUT /comment3s/1.json
  def update
    respond_to do |format|
      if @comment3.update(comment3_params)
        format.html { redirect_to @comment3, notice: 'Comment3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment3 }
      else
        format.html { render :edit }
        format.json { render json: @comment3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment3s/1
  # DELETE /comment3s/1.json
  def destroy
    @comment3.destroy
    respond_to do |format|
      format.html { redirect_to comment3s_url, notice: 'Comment3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment3
      @comment3 = Comment3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment3_params
      params.require(:comment3).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
