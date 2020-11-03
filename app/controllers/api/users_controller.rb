class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show, :create]

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def index
    @users = User.all
    render "index.json.jb"
  end

  def update
    @user = User.find_by(id: params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.short_bio = params[:short_bio] || @user.short_bio
    @user.linkedin_url = params[:linkedin_url] || @user.linkedin_url
    @user.twitter_handle = params[:twitter_handle] || @user.twitter_handle
    @user.website_url = params[:website_url] || @user.website_url
    @user.online_resume_url = params[:online_resume_url] || @user.online_resume_url
    @user.github_url = params[:github_url] || @user.github_url
    @user.photo = params[:photo] || @user.photo

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
