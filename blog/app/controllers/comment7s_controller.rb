class Comment7sController < ApplicationController
  before_action :set_comment7, only: [:show, :edit, :update, :destroy]

  # GET /comment7s
  # GET /comment7s.json
  def index
    @comment7s = Comment7.all
  end

  # GET /comment7s/1
  # GET /comment7s/1.json
  def show
  end

  # GET /comment7s/new
  def new
    @comment7 = Comment7.new
  end

  # GET /comment7s/1/edit
  def edit
  end

  # POST /comment7s
  # POST /comment7s.json
  def create
    @comment7 = Comment7.new(comment7_params)

    respond_to do |format|
      if @comment7.save
        format.html { redirect_to @comment7, notice: 'Comment7 was successfully created.' }
        format.json { render :show, status: :created, location: @comment7 }
      else
        format.html { render :new }
        format.json { render json: @comment7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment7s/1
  # PATCH/PUT /comment7s/1.json
  def update
    respond_to do |format|
      if @comment7.update(comment7_params)
        format.html { redirect_to @comment7, notice: 'Comment7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment7 }
      else
        format.html { render :edit }
        format.json { render json: @comment7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment7s/1
  # DELETE /comment7s/1.json
  def destroy
    @comment7.destroy
    respond_to do |format|
      format.html { redirect_to comment7s_url, notice: 'Comment7 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment7
      @comment7 = Comment7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment7_params
      params.require(:comment7).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
