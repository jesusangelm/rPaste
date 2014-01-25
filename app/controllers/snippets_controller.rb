class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      redirect_to @snippet
    else
      render :new
    end
  end

  def new
    @snippet = Snippet.new
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  private

  def snippet_params
    params.require(:snippet).permit(:title, :lang, :code)
  end
end
