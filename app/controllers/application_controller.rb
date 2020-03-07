class ApplicationController < ActionController::API
  include ActionView::Layouts

  # rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found_exception
  rescue_from ActiveRecord::RecordInvalid, with: :handle_active_record_exception

  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def handle_general_exception(error)
    exception_response(error_body(error))
  end

  def handle_not_found_exception(error)
    exception_response(error_body(error), :not_found)
  end

  def handle_active_record_exception(exception)
    exception_response(error_body(exception.record.errors), :bad_request, :warn)
  end

  def error_body(message)
    {
        error: true,
        result: message
    }
  end

  def exception_response(body, status = 500, log=:error )
    Rails.logger.send(log, body)
    render json: body.merge({status: Rack::Utils::SYMBOL_TO_STATUS_CODE[status]}), status: status
  end

end
