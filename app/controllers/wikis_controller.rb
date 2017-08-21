class WikisController < ApplicationController
  before_action :set_wiki, only: [:show, :edit, :update, :destroy, :history]

  # GET /wikis
  # GET /wikis.json
  def index
    if params[:search]
      @wikis = Wiki.search(params[:search]).order("created_at DESC")
    else
      @wikis = Wiki.order(params[:sort])
    end

  end

  # GET /wikis/1
  # GET /wikis/1.json
  def show
    @wiki_owner = User.find(@wiki.user_id)

  end

  # GET /wikis/new
  def new
    @wiki = Wiki.new
    @user = current_user
  end

  # GET /wikis/1/edit
  def edit
  end

  # POST /wikis
  # POST /wikis.json
  def create
    @wiki = Wiki.new(wiki_params)
    @user = current_user

    respond_to do |format|
      if @wiki.save
        format.html { redirect_to @wiki, notice: 'Wiki was successfully created.' }
        format.json { render :show, status: :created, location: @wiki }
      else
        format.html { render :new }
        format.json { render json: @wiki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wikis/1
  # PATCH/PUT /wikis/1.json
  def update
    respond_to do |format|
      if @wiki.update(wiki_params)
        format.html { redirect_to @wiki, notice: 'Wiki was successfully updated.' }
        format.json { render :show, status: :ok, location: @wiki }
      else
        format.html { render :edit }
        format.json { render json: @wiki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wikis/1
  # DELETE /wikis/1.json
  def destroy
    @wiki.destroy
    respond_to do |format|
      format.html { redirect_to wikis_url, notice: 'Wiki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def history
    @versions = PaperTrail::Version.order('created_at DESC')
  end

  def get_version_body(input)
    items = input.split()
    items.each do |item|
      puts item
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiki
      @wiki = Wiki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wiki_params
      params.require(:wiki).permit(:title, :body, :user_id, :author, :category, :published_date, :setting, :recommended_age, :sensitive_content, :book_synopsis)
    end

end
