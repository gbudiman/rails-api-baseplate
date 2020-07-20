# frozen_string_literal: true

module JsonRenderable
  extend ActiveSupport::Concern

  included do
    def render_as_json
      render json: Oj.dump(yield)
    rescue ActiveRecord::DeleteRestrictionError, ActiveRecord::RecordInvalid, ActiveRecord::RecordNotFound => e
      render json: { message: e.message }, status: :bad_request
    end
  end
end
