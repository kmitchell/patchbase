class SynthsController < ApplicationController
  def index
    @synths = Synth.all
  end

  def show
    @synth = Synth.find(params[:id])
  end

  def new
    @synth = Synth.new
  end

  def create
    @synth = Synth.new(synth_params)
    @synth.save
    redirect_to synth_url(@synth)
  end

  private

    def synth_params
      params.require(:synth).permit(:name, :type_of, :synth_creator_id)
    end
end
