class FreewordsController < ApplicationController
  def new
    @freeword = Freeword.new
  end

  def create
    @freeword = current_user.freewords.new(freeword_params)
    @freeword.user_id = current_user.id
    # @freeword = Freeword.new(freeword_params)
    if @freeword.save
      # userのidと紐づけしてから
      redirect_to freewords_show_path(@freeword.id)
    end
  end

  def show
    @freeword = Freeword.find_by(id: params[:id])
  end

  def edit
    @freeword = Freeword.find_by(id: params[:id])
  end

  def update
    @freeword = Freeword.find_by(id: params[:id])
    if @freeword.update_attirbute(freeword_params)
      redirect_to users_show_path(freeword.user.id)
    end
  end

  private
  def freeword_params
    params.require(:freeword).permit(
      :word,
      :word2,
      :word3,
      :word4,
      :word5
    )
  end
end
