class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
    #   if params[:game_id] && @game = Game.find_by_id(params[:game_id])
    #   @post = @game.posts.build
    # else
      @post = Post.new
    # end
    # @post.build_game
    
    end

    def create
        # @post = @game.posts.build(post_params)
        @post = Post.create(post_params)
        @post.save
            redirect_to game_post_path(@post.game_id)
    end

    def show
        post = Post.find(post_params[:id])
        redirect_to game_post_path(post)
    end

    private

    def post_params
        params.require(:post).permit(:content, :game_id, :player_id)
    end
end

