class PostingsController < ApplicationController
  before_action :set_posting, only: [:show, :edit, :update, :destroy]

  def index
    @postings = Posting.all
  end

  def show
  end

  def new
    if params[:back]
      @posting = Posting.new(posting_params)
    else
      @posting = Posting.new
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def confirm
    @posting = Posting.new(posting_params)
    render :new if @posting.invalid?
  end

  private
  def set_posting
    @twitter = Twitter.find(params[:id])
  end

  def posting_params
    params.require(:posting).permit(:content)
  end

end
