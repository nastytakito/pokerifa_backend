class ApplicationController < ActionController::API

  rescue_from Exception, with: :handle_general_exception
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found_exception
  rescue_from ActiveRecord::ActiveRecordError, with: :handle_active_record_exception

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

  def handle_active_record_exception(error)
    exception_response(error_body(error), :bad_request, :warn)
  end

  def save(record)
    raise ActiveRecord::ActiveRecordError, record.errors.messages unless record.save
  end

  def error_body(message)
    {
        error: true,
        message: message
    }
  end

  def exception_response(body, status = 500, log=:error )
    Rails.logger.send(log, body)
    json_response(body, status)
  end

end
