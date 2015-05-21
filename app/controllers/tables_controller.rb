class TablesController < ApplicationController

  before_filter :find_table, only: [:show, :edit, :update, :destroy]

  def index
    @tables = Table.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @table = Table.new(table_params)

    if @table.save
      redirect_to @table
    else
      render 'new'
    end
  end

  def update
    if @table.update(table_params)
      redirect_to @table
    else
      render 'edit'
    end
  end

  def destroy
    @table.destroy
    redirect_to action: "index"
  end

  private
    def table_params
      params.require(:table).permit(:title, :number)
    end

  private
    def find_table   
      @table = Table.find(params[:id])
    end

end
