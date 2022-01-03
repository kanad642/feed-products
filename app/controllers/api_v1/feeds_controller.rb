require 'csv'
require 'yaml'
require 'json'

class ApiV1::FeedsController < ApplicationController

  protect_from_forgery with: :null_session


  PartnerNotFoundError = Class.new(StandardError)


  def feed_process

    api_key        = params[:api_key]
    data_contant   = params[:data_contant]
    feed_file_url  = params[:file_path] if Rails.env.production?


    # In case if we have Partner data in data base

    # partner = Partner.find_by_api_key(api_key)
    # raise PartnerNotFoundError.new if @partner.nil?

    render(plain: data_contant)


    rescue PartnerNotFoundError
      render(status: :not_found, plain: "Partner not found.", code: 404)
  end


end
