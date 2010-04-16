# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def render_with_contents(*args)
    Rails.logger.info "!!! Haml::Template::options[:ugly]=#{Haml::Template::options[:ugly].inspect}"

    options = args.extract_options!.symbolize_keys
    options[:locals] ||= {}

    #require 'ruby-debug'; debugger
    # This returns "This is the block passed to header\n" -- as expected
    options[:locals][:contents] = capture_haml do
      yield
    end
    Rails.logger.info "!!! capture returned:      #{options[:locals][:contents].inspect}"

    # This returns 2 -- not what one would expect!
    options[:locals][:contents] = capture do
      yield
    end
    Rails.logger.info "!!! capture_haml returned: #{options[:locals][:contents].inspect}"

    render *args, options
  end
end
