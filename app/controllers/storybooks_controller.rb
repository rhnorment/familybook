class StorybooksController < ApplicationController

  def index
    @storybooks = Storybook.all
  end

end