class Comment11sController < ApplicationController
  before_action :set_comment11, only: [:show, :edit, :update, :destroy]

  # GET /comment11s
  # GET /comment11s.json
  def index
    @comment11s = Comment11.all
  end

  # GET /comment11s/1
  # GET /comment11s/1.json
  def show
  end

  # GET /comment11s/new
  def new
    @comment11 = Comment11.new
  end

  # GET /comment11s/1/edit
  def edit
  end

  # POST /comment11s
  # POST /comment11s.json
  def create
    @comment11 = Comment11.new(comment11_params)

    respond_to do |format|
      if @comment11.save
        format.html { redirect_to @comment11, notice: 'Comment11 was successfully created.' }
        format.json { render :show, status: :created, location: @comment11 }
      else
        format.html { render :new }
        format.json { render json: @comment11.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment11s/1
  # PATCH/PUT /comment11s/1.json
  def update
    respond_to do |format|
      if @comment11.update(comment11_params)
        format.html { redirect_to @comment11, notice: 'Comment11 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment11 }
      else
        format.html { render :edit }
        format.json { render json: @comment11.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment11s/1
  # DELETE /comment11s/1.json
  def destroy
    @comment11.destroy
    respond_to do |format|
      format.html { redirect_to comment11s_url, notice: 'Comment11 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment11
      @comment11 = Comment11.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment11_params
      params.require(:comment11).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
