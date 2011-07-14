class Ecm::Frontend::NewsController < Ecm::FrontendController
  unloadable

  def index
    @news = ::News.all

    respond_to do |format|
      format.html { render 'index' }
      format.xml  { render :xml => @news }
    end
  end
  
  def show
    @news = ::News.find(params[:id])
    
    respond_to do |format|
      format.html { render 'show' }
      format.xml  { render :xml => @news }
    end
  end  
end
