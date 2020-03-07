errors = @errors.present? && @errors.any? ? @errors : nil

json.status response.status
json.errors errors
json.result errors ? nil : ActiveSupport::JSON.decode(yield)