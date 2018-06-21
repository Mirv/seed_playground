class Comment6sController < ApplicationController
  before_action :set_comment6, only: [:show, :edit, :update, :destroy]

  # GET /comment6s
  # GET /comment6s.json
  def index
    @comment6s = Comment6.all
  end

  # GET /comment6s/1
  # GET /comment6s/1.json
  def show
  end

  # GET /comment6s/new
  def new
    @comment6 = Comment6.new
  end

  # GET /comment6s/1/edit
  def edit
  end

  # POST /comment6s
  # POST /comment6s.json
  def create
    @comment6 = Comment6.new(comment6_params)

    respond_to do |format|
      if @comment6.save
        format.html { redirect_to @comment6, notice: 'Comment6 was successfully created.' }
        format.json { render :show, status: :created, location: @comment6 }
      else
        format.html { render :new }
        format.json { render json: @comment6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment6s/1
  # PATCH/PUT /comment6s/1.json
  def update
    respond_to do |format|
      if @comment6.update(comment6_params)
        format.html { redirect_to @comment6, notice: 'Comment6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment6 }
      else
        format.html { render :edit }
        format.json { render json: @comment6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment6s/1
  # DELETE /comment6s/1.json
  def destroy
    @comment6.destroy
    respond_to do |format|
      format.html { redirect_to comment6s_url, notice: 'Comment6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment6
      @comment6 = Comment6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment6_params
      params.require(:comment6).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
