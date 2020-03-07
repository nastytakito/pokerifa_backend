class ApplicationController < ActionController::API

  rescue_from Exception, with: :handle_general_exception

  private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def handle_general_exception(error)
    Rails.logger.error error
    puts error
    json_response({ error: error},
                  500)
  end

  def save(record)
    raise ActiveRecord::ActiveRecordError, record.errors.messages unless record.save
  end

end
