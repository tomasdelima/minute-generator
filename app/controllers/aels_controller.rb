class AelsController < ApplicationController

  def save
    ael = Ael.find_by id: params[:id]
    ael = Ael.create if ael.nil?
    ael.update_attributes members: params[:members], city: params[:city]
    render json: ael
  end

  def delete
    ael = Ael.find params[:id]
    ael.destroy
    render json: ael
  end

  def set_active_ael
    Ael.update_all active: false
    ael = Ael.find(params[:id]).update_attribute(:active, true)
    render json: ael
  end
end
