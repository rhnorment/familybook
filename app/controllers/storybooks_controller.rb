class StorybooksController < ApplicationController

  def index
    @storybooks = Storybook.all
  end

  def show
    @storybook = Storybook.find(params[:id])
  end

  def new

  end

end