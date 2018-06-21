class Comment14sController < ApplicationController
  before_action :set_comment14, only: [:show, :edit, :update, :destroy]

  # GET /comment14s
  # GET /comment14s.json
  def index
    @comment14s = Comment14.all
  end

  # GET /comment14s/1
  # GET /comment14s/1.json
  def show
  end

  # GET /comment14s/new
  def new
    @comment14 = Comment14.new
  end

  # GET /comment14s/1/edit
  def edit
  end

  # POST /comment14s
  # POST /comment14s.json
  def create
    @comment14 = Comment14.new(comment14_params)

    respond_to do |format|
      if @comment14.save
        format.html { redirect_to @comment14, notice: 'Comment14 was successfully created.' }
        format.json { render :show, status: :created, location: @comment14 }
      else
        format.html { render :new }
        format.json { render json: @comment14.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment14s/1
  # PATCH/PUT /comment14s/1.json
  def update
    respond_to do |format|
      if @comment14.update(comment14_params)
        format.html { redirect_to @comment14, notice: 'Comment14 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment14 }
      else
        format.html { render :edit }
        format.json { render json: @comment14.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment14s/1
  # DELETE /comment14s/1.json
  def destroy
    @comment14.destroy
    respond_to do |format|
      format.html { redirect_to comment14s_url, notice: 'Comment14 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment14
      @comment14 = Comment14.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment14_params
      params.require(:comment14).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
