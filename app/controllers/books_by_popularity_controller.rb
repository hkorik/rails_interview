class BooksByPopularityController < ApplicationController
  def index
  	@books = Book.all(:order => 'rank ASC, title')
  end

  def new
  	if !signed_in?
		deny_access
  	end	
  end

  def create
	@book = Book.new(params[:create_book])
	if @book.save
		flash[:success_message] = "Book successfully added!"
		redirect_to bookForm_path
	else
		flash[:error_messages] = @book.errors.full_messages
		redirect_to bookForm_path
	end 
  end
end
