class Comment17sController < ApplicationController
  before_action :set_comment17, only: [:show, :edit, :update, :destroy]

  # GET /comment17s
  # GET /comment17s.json
  def index
    @comment17s = Comment17.all
  end

  # GET /comment17s/1
  # GET /comment17s/1.json
  def show
  end

  # GET /comment17s/new
  def new
    @comment17 = Comment17.new
  end

  # GET /comment17s/1/edit
  def edit
  end

  # POST /comment17s
  # POST /comment17s.json
  def create
    @comment17 = Comment17.new(comment17_params)

    respond_to do |format|
      if @comment17.save
        format.html { redirect_to @comment17, notice: 'Comment17 was successfully created.' }
        format.json { render :show, status: :created, location: @comment17 }
      else
        format.html { render :new }
        format.json { render json: @comment17.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment17s/1
  # PATCH/PUT /comment17s/1.json
  def update
    respond_to do |format|
      if @comment17.update(comment17_params)
        format.html { redirect_to @comment17, notice: 'Comment17 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment17 }
      else
        format.html { render :edit }
        format.json { render json: @comment17.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment17s/1
  # DELETE /comment17s/1.json
  def destroy
    @comment17.destroy
    respond_to do |format|
      format.html { redirect_to comment17s_url, notice: 'Comment17 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment17
      @comment17 = Comment17.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment17_params
      params.require(:comment17).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
