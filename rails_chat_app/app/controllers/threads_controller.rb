class ThreadsController < ApplicationController
  def index
    @thread_boards = ThreadBoard.all.order(:id)
  end

  def show
    @thread_board = ThreadBoard.find(params[:id])
    @messages = @thread_board.messages
  end
end
