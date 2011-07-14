class Ecm::Frontend::NewsController < Ecm::FrontendController
  unloadable

  def index
    @news = ::News.all

    respond_to do |format|
      format.html { render 'index' } # index.html.erb
      format.xml  { render :xml => @news }
    end
  end
end
