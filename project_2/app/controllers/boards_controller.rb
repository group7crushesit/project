class BoardsController < ApplicationController
  def index
    @posts = Board.all
  end

  def new
    @post = Board.new
  end

  def show
    @post = Board.find_by({id: params[:id]})
  end

  def edit
  end

  def create

    @post = Board.create(post_params)
    redirect_to board_path(@post.id)

    # @post = current_user.boards.create(post_params)
    # redirect_to board_path(@post.id)

    # below is preferable, couldn't get it to work. above is quick fix.


    # post = current_user.boards.new(post_params)
    # if post.save
    #   redirect_to board_path(board)
    # else 
    #   redirect_to new_board_path
    # end
  end

  def update
  end

  def destroy
  end

  private

    def post_params
      params.require(:board).permit(:title, :description #, :type
        )
    end

    def find_user_post
      @post = current_user.boards.find_by({id: params[:id]})
      unless @post
        redirect_to boards_path(current_user)
      else
        @post
    end
  end
end
