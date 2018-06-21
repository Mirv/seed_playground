class Comment13sController < ApplicationController
  before_action :set_comment13, only: [:show, :edit, :update, :destroy]

  # GET /comment13s
  # GET /comment13s.json
  def index
    @comment13s = Comment13.all
  end

  # GET /comment13s/1
  # GET /comment13s/1.json
  def show
  end

  # GET /comment13s/new
  def new
    @comment13 = Comment13.new
  end

  # GET /comment13s/1/edit
  def edit
  end

  # POST /comment13s
  # POST /comment13s.json
  def create
    @comment13 = Comment13.new(comment13_params)

    respond_to do |format|
      if @comment13.save
        format.html { redirect_to @comment13, notice: 'Comment13 was successfully created.' }
        format.json { render :show, status: :created, location: @comment13 }
      else
        format.html { render :new }
        format.json { render json: @comment13.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment13s/1
  # PATCH/PUT /comment13s/1.json
  def update
    respond_to do |format|
      if @comment13.update(comment13_params)
        format.html { redirect_to @comment13, notice: 'Comment13 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment13 }
      else
        format.html { render :edit }
        format.json { render json: @comment13.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment13s/1
  # DELETE /comment13s/1.json
  def destroy
    @comment13.destroy
    respond_to do |format|
      format.html { redirect_to comment13s_url, notice: 'Comment13 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment13
      @comment13 = Comment13.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment13_params
      params.require(:comment13).permit(:content, :post_id, :something, :somethingelse, :something_more)
    end
end
