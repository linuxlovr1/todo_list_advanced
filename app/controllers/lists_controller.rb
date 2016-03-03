class ListsController < ApplicationController
  before_action :list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to lists_path
  end

  def edit

  end

  def update
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  def destroy_all
    List._destroy_all 
    redirect_to lists_path
  end

  private 
    def list_params
      binding.pry
      params.require(:list).permit(:title)
    end

    def list
      @list = List.find(params[:id])
    end
end
