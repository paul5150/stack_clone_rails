class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end
end
