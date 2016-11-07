class FinderController < ApplicationController
  #before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
    @province = Province.all
  end

  def alphabetized
    @customers = Customer.all.order(:full_name)
  end

  def missing_email
    @customers = Customer.where("email_address == ''")
  end

  end
