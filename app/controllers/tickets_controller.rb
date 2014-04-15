class TicketsController < ApplicationController

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      render json: @ticket, status: :created
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  def destroy
    ticket = Ticket.where(id: params[:id]).first
    ticket.destroy if ticket
    render json: {}
  end

  private

    def ticket_params
      params.require(:ticket).permit(:exhibition_id, :entry_at, :name)
    end
end
