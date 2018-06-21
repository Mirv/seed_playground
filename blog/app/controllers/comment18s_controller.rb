class Comment18sController < ApplicationController
  before_action :set_comment18, only: [:show, :edit, :update, :destroy]

  # GET /comment18s
  # GET /comment18s.json
  def index
    @comment18s = Comment18.all
  end

  # GET /comment18s/1
  # GET /comment18s/1.json
  def show
  end

  # GET /comment18s/new
  def new
    @comment18 = Comment18.new
  end

  # GET /comment18s/1/edit
  def edit
  end

  # POST /comment18s
  # POST /comment18s.json
  def create
    @comment18 = Comment18.new(comment18_params)

    respond_to do |format|
      if @comment18.save
        format.html { redirect_to @comment18, notice: 'Comment18 was successfully created.' }
        format.json { render :show, status: :created, location: @comment18 }
      else
        format.html { render :new }
        format.json { render json: @comment18.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment18s/1
  # PATCH/PUT /comment18s/1.json
  def update
    respond_to do |format|
      if @comment18.update(comment18_params)
        format.html { redirect_to @comment18, notice: 'Comment18 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment18 }
      else
        format.html { render :edit }
        format.json { render json: @comment18.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment18s/1
  # DELETE /comment18s/1.json
  def destroy
    @comment18.destroy
    respond_to do |format|
      format.html { redirect_to comment18s_url, notice: 'Comment18 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment18
      @comment18 = Comment18.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment18_params
      params.require(:comment18).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
