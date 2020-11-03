class Api::EducationsController < ApplicationController
  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
    )
  if @education.save
    render json: { message: "Education created successfully" }, 
  else 
    render json: {errors: @education.errors.full_messages }
  end 
end 


  def update

  end 
end
