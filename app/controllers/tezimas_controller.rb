class TezimasController < ApplicationController
  def index
    @tezimas = Tezima.all
    @newTezima = Tezima.new
  end

  def show
  end

  def create
    @tezima = Tezima.new(params[:tezima].permit(:name, :body))
    @tezima.save
    redirect_to tezimas_index_path
  end

  def delete
    @tezima = Tezima.find(params[:id])
    @tezima.destroy
    redirect_to tezimas_index_path
  end
end
