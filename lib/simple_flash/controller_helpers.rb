module SimpleFlash
  module ControllerHelpers
    private

    def redirect_to_with_success(url, options = {})
      options[:notice] = _flash_lookup("success")
      redirect_to url, options
    end

    def redirect_to_with_fail(url, options = {})
      options[:alert] = _flash_lookup("fail")
      redirect_to url, options
    end

    def _flash_lookup(type)
      t(".#{type}", cascade: true)
    end
  end
end
