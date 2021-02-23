class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = @boards || Board.joins(:posts)
              .select("boards.*, count(posts.id) as count")
              .group(:id)
              .order(:id)
    render component: 'BoardIndex', props: { boards: @boards }
  end
end
