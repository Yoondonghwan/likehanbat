class BoothController < ApplicationController
  def info
    id = params[:id]
    
    @info = Booth.find(id)
  
  end  
  def likelion
  
  end
  def fuck
    @info_all = Booth.all
  end
  
  def edit
  @info_e = Booth.find params[:id]
  end
  
  def update
  info_u = Booth.find params[:id]
  info_u.name =params[:name_u]
  info_u.depart=params[:depart_u]
  info_u.introduce= params[:introduce_u]
  info_u.save
  redirect_to '/fuck'
  end
end
