class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:show, :edit, :update, :destroy]


  def index
    @snippets = Snippet.all.order(technology: :desc)
  end
  
  def show
  end

  def new
    @snippet = Snippet.new
  end

  def edit
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
    request = Net::HTTP.post_form(URI.parse("http://pygments.appspot.com/"), {lang: @snippet.language, code: @snippet.plain_code})
    @snippet.update_attribute(:highlighted_code, request.body)
    redirect_to @snippet
    else
      render :new
    end
  end


  def update
    respond_to do |format|
      if @snippet.update(snippet_params)
        format.html { redirect_to @snippet, notice: 'Snippet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @snippet.destroy
    respond_to do |format|
      format.html { redirect_to snippets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snippet_params
      params.require(:snippet).permit(:technology, :code, :description, :plain_code, :highlighted_code, :language)
    end
end
