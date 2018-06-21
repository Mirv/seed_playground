class Comment9sController < ApplicationController
  before_action :set_comment9, only: [:show, :edit, :update, :destroy]

  # GET /comment9s
  # GET /comment9s.json
  def index
    @comment9s = Comment9.all
  end

  # GET /comment9s/1
  # GET /comment9s/1.json
  def show
  end

  # GET /comment9s/new
  def new
    @comment9 = Comment9.new
  end

  # GET /comment9s/1/edit
  def edit
  end

  # POST /comment9s
  # POST /comment9s.json
  def create
    @comment9 = Comment9.new(comment9_params)

    respond_to do |format|
      if @comment9.save
        format.html { redirect_to @comment9, notice: 'Comment9 was successfully created.' }
        format.json { render :show, status: :created, location: @comment9 }
      else
        format.html { render :new }
        format.json { render json: @comment9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment9s/1
  # PATCH/PUT /comment9s/1.json
  def update
    respond_to do |format|
      if @comment9.update(comment9_params)
        format.html { redirect_to @comment9, notice: 'Comment9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment9 }
      else
        format.html { render :edit }
        format.json { render json: @comment9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment9s/1
  # DELETE /comment9s/1.json
  def destroy
    @comment9.destroy
    respond_to do |format|
      format.html { redirect_to comment9s_url, notice: 'Comment9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment9
      @comment9 = Comment9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment9_params
      params.require(:comment9).permit(:content, :post_id, :something, :somethingelse, :something, :more)
    end
end
