class ExpenseReportsController < ApplicationController
  # PATCH/PUT /expense_reports
  def update
    amount_wei = transfer_params[:amount]
    to = transfer_params[:to]

    if Forms::Verify.exec_transfer(to, amount_wei)
      render json: { status: :success }
    else
      render json: { status: :failed }
    end
  end

  private

  def transfer_params
    params.permit(:amount, :to)
  end
end
