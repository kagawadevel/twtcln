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
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to postings_path, notice:"投稿が成功しました"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @posting.update(posting_params)
      redirect_to postings_path, notice: "投稿を編集しました"
    else
      render 'edit'
    end
  end

  def destroy
  end

  def confirm
    @posting = Posting.new(posting_params)
    render :new if @posting.invalid?
  end

  private
  def set_posting
    @posting = Posting.find(params[:id])
  end

  def posting_params
    params.require(:posting).permit(:content)
  end

end
