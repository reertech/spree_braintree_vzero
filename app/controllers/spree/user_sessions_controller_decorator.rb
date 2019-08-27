if defined?(Spree::UserSessionsController)
  Spree::UserSessionsController.class_eval do
    before_action :associate_user, only: :create

    def current_order_params
      { currency: current_currency, token: cookies.signed[:token], store_id: current_store.id }
    end
  end
end
