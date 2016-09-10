class StorybooksController < ApplicationController

  def index
    @storybooks = Storybook.all
  end

  def show
    @storybook = Storybook.find(params[:id])
  end

  def new
    @storybook = Storybook.new
  end

  def create
    @storybook = Storybook.new(storybook_params)

    if @storybook.save
      redirect_to @storybook
      flash[:success] = 'Your storybook was successfully created!'
    else
      flash.now[:error] = 'There was a problem creating your storybook.  Please try again.'
      render :new
    end
  end

  private

  def storybook_params
    params.require(:storybook).permit(:cover, :intro, :title)
  end

end