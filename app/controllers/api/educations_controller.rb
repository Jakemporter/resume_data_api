class Api::EducationsController < ApplicationController
  before_action
  def create
    # education = Education.new

  end 


  def update
    @education = Education.find_by(id: params[:id])
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university_name = params[:university_name] || @education.university_name
    @education.details = params[:details] || @education.details
    if @education.save
      render 
    end
  end 
end
