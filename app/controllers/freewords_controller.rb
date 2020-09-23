class FreewordsController < ApplicationController
  def new
    @freeword = Freeword.new
  end

  def create
    @freeword = current_user.freewords.new(freeword_params)
    # @freeword = Freeword.new(freeword_params)
    if @freeword.save
      # userのidと紐づけしてから
      redirect_to users_show_path(@user.id)
    end
  end

  def show
    @freeword = Freeword.find_by(id: params[:id])
  end

  def edit
  end

  private
  def freeword_params
    params.require(:freeword).permit(:word)
  end
end
