class ConciertosController < ApplicationController
  def index
    @conciertos = Concierto.all
  end
  def new
    @concierto = Concierto.new
    @grupos = Grupo.all
  end

  def show
    @concierto = Concierto.find(params[:id])
  end

  def edit
    @grupo = Grupo.find(params[:id])
    @concierto = Concierto.find(params[:id])
  end

  def new
    @concierto = Concierto.new(concierto_params) #Strong parameters, previene ataques de mass assignment
      respond_to do |format| if @concierto.save
          format.html { redirect_to @concierto, notice: 'El concierto fue creado correctamente.'}
        else
          format.html { render :new }
        end
      end
  end


  def destroy
     @concierto = Concierto.find params[:id]
     @concierto.destroy
     respond_to do |format|
       format.html { redirect_to @concierto, notice: 'The concert was successfully destroyed.' }
     end
  end

    private
    def concierto_params
      params.require(:concierto).permit(:fecha_concierto, :asistentes, :lugar, :duracion, :grupo_id)
    end
  end
