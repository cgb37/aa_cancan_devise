class ArticlesController < InheritedResources::Base

  # CanCan provides a convenient load_and_authorize_resource method in the controller
  # It will add a before filter that has this behavior for the actions if they exist.
  # This means you do not need to put code below in your controller.
  # def index
  #   authorize! :index, Project
  #   @projects = Project.accessible_by(current_ability)
  # end

  load_and_authorize_resource


  before_action :set_collection, only: [:show, :edit, :update, :destroy]






  private

    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body)
    end
end

