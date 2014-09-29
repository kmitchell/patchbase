class SynthCreatorsController < ApplicationController
  def index
    @synth_creators = SynthCreator.all
  end

  def show
    @synth_creator = SynthCreator.find(params[:id])
  end

  def new
    @synth_creator = SynthCreator.new
  end

  def create
    @synth_creator = SynthCreator.new(synth_creator_params)
    @synth_creator.save
    redirect_to synth_creator_url(@synth_creator)
  end

  private
    def synth_creator_params
      params.require(:synth_creator).permit(:name, :website)
    end
end
