class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = Board.where(parent_id: nil)
    render component: 'BoardIndex', props: { boards: @boards }
  end
end
