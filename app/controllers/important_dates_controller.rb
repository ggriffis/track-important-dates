class ImportantDatesController < ApplicationController
  def index
    @important_dates = ImportantDate.select {|d| d.date_of_importance >= Date.today}
  end

  def new
    @important_date = ImportantDate.new
  end

  def create
    @important_date = ImportantDate.new(params[:important_date])
    if @important_date.save
      flash[:notice] = "Important Date has been created"
      redirect_to @important_date
    else
    end
  end

  def show
    @important_date = ImportantDate.find(params[:id])
  end
end
