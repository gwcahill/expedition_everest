class ThemeparksController < ApplicationController
  def show
    @themepark = Themepark.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @themepark }
      format.json { render :json => @themepark }
    end
  end

  def index
    @themeparks = Themepark.paginate(page: params[:page])
  end

  def new
  end
end