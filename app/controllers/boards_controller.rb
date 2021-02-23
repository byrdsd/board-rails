class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    boards = Board.where(parent_id: nil)
    posts = Post.all
    boards = boards.map do |board|
      {
        board: board,
        post_count: posts.select {|post| post.board_id == board.id }.length
      }
    end
    render component: 'BoardIndex', props: { boards: boards }
  end
end
