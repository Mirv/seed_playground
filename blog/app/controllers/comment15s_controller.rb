class Comment15sController < ApplicationController
  before_action :set_comment15, only: [:show, :edit, :update, :destroy]

  # GET /comment15s
  # GET /comment15s.json
  def index
    @comment15s = Comment15.all
  end

  # GET /comment15s/1
  # GET /comment15s/1.json
  def show
  end

  # GET /comment15s/new
  def new
    @comment15 = Comment15.new
  end

  # GET /comment15s/1/edit
  def edit
  end

  # POST /comment15s
  # POST /comment15s.json
  def create
    @comment15 = Comment15.new(comment15_params)

    respond_to do |format|
      if @comment15.save
        format.html { redirect_to @comment15, notice: 'Comment15 was successfully created.' }
        format.json { render :show, status: :created, location: @comment15 }
      else
        format.html { render :new }
        format.json { render json: @comment15.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment15s/1
  # PATCH/PUT /comment15s/1.json
  def update
    respond_to do |format|
      if @comment15.update(comment15_params)
        format.html { redirect_to @comment15, notice: 'Comment15 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment15 }
      else
        format.html { render :edit }
        format.json { render json: @comment15.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment15s/1
  # DELETE /comment15s/1.json
  def destroy
    @comment15.destroy
    respond_to do |format|
      format.html { redirect_to comment15s_url, notice: 'Comment15 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment15
      @comment15 = Comment15.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment15_params
      params.require(:comment15).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
