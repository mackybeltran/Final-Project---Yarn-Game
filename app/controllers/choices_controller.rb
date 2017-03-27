class ChoicesController < ApplicationController

  def new

  end

  def create
    panel = Panel.find(params[:panel_id])
    @choice = panel.choices.find(params[:id])
  end

  def destroy
    panel = Panel.find(params[:panel_id])
    @choice = panel.choices.find(params[:id])
  end

  def index
    panel = Panel.find(params[:panel_id])
    @choices = panel.choices
      render json: {status: 'SUCCESS', message: 'Loaded all choices', choices: @choices}, status: :ok
  end

  def show
    panel = Panel.find(params[:panel_id])
    @choice = panel.choices.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded choice', choice: @choice}, status: :ok
  end
end
