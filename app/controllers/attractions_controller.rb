class AttractionsController < ApplicationController
  def show
    @attraction = Attraction.find(params[:id])
    respond_to do |format|
      format.html
      format.xml { render :xml => @attraction }
      format.json { render :json => @attraction }
    end
  end

  def index
    @attractions = Attraction.paginate(page: params[:page])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(params[:attraction])

    @names = Themepark.get_names
    @count = 1
    @names.each do |i|
      if(i == @attraction.themepark_id.to_s)
        @attraction.themepark_id = @count
      else
        @count = @count + 1
      end
    end
    if @attraction.save
      redirect_to @attraction
    else
      render 'new'
    end
  end
end
