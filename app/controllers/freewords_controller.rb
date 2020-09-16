class FreewordsController < ApplicationController
  def new
    @freeword = Freeword.new
  end

  def create
    @freeword = Freeword.new(freeword_params)
    if @freeword.save
      # userのidと紐づけしてから
      # redirect_to users_show_path(@user.id)
    end
  end

  def edit
  end

  private
  def freeword_params
    params.require(:freeword).permit(:word)
  end
end
