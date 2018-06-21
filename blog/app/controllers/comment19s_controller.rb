class Comment19sController < ApplicationController
  before_action :set_comment19, only: [:show, :edit, :update, :destroy]

  # GET /comment19s
  # GET /comment19s.json
  def index
    @comment19s = Comment19.all
  end

  # GET /comment19s/1
  # GET /comment19s/1.json
  def show
  end

  # GET /comment19s/new
  def new
    @comment19 = Comment19.new
  end

  # GET /comment19s/1/edit
  def edit
  end

  # POST /comment19s
  # POST /comment19s.json
  def create
    @comment19 = Comment19.new(comment19_params)

    respond_to do |format|
      if @comment19.save
        format.html { redirect_to @comment19, notice: 'Comment19 was successfully created.' }
        format.json { render :show, status: :created, location: @comment19 }
      else
        format.html { render :new }
        format.json { render json: @comment19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment19s/1
  # PATCH/PUT /comment19s/1.json
  def update
    respond_to do |format|
      if @comment19.update(comment19_params)
        format.html { redirect_to @comment19, notice: 'Comment19 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment19 }
      else
        format.html { render :edit }
        format.json { render json: @comment19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment19s/1
  # DELETE /comment19s/1.json
  def destroy
    @comment19.destroy
    respond_to do |format|
      format.html { redirect_to comment19s_url, notice: 'Comment19 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment19
      @comment19 = Comment19.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment19_params
      params.require(:comment19).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
