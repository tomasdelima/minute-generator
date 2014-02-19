class MinutesController < ApplicationController
  before_action :set_minute, only: [:show, :edit, :update, :destroy]

  def index
    if Ael.find_by_active true
      @minutes = Minute.all
    else
      flash[:notice] = 'Escolha ou cadastre uma AEL'
      redirect_to configurations_path
    end
  end

  def show
  end

  def new
    @minute = Minute.new ael: Ael.find_by_active(true)
  end

  def edit
  end

  def create
    @minute = Minute.new(minute_params)
    @minute.ael = Ael.find_by_active true

    respond_to do |format|
      if @minute.save
        flash[:notice] = 'A ata foi criada com sucesso.'
        format.html { redirect_to edit_minute_path @minute }
        format.json { render action: 'show', status: :created, location: @minute }
      else
        format.html { render action: 'new' }
        format.json { render json: @minute.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @minute.update(minute_params)
        flash[:notice] = 'A ata foi atualizada com sucesso.'
        format.html { redirect_to edit_minute_path }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @minute.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_worker
    Update.perform
  end

  def destroy
    @minute.destroy
    respond_to do |format|
      format.html { redirect_to minutes_url }
      format.json { head :no_content }
    end
  end

  private

  def set_minute
    @minute = Minute.find(params[:id])
    params[:minute_id] = @minute.id
  end

  def minute_params
    params[:minute][:members] = params[:minute][:members].map{ |a,b| a if b!='0' }.compact.join(', ')
    params.require(:minute).permit(:date, :members)
  end
end
