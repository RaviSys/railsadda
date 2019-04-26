class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :prepare_meta_tags, if: -> { request.get? }

  def prepare_meta_tags(options={})
    site_name   = "RailsAdda"
    title       = [controller_name, action_name].join(" ")
    description = "Awesome and Incredible learning platform for Ruby on Rails and Other Web Technology"
    image       = options[:image] || "your-default-image-url"
    current_url = request.url
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[learning_rails learning_ruby web_development web_services ruby_on_rails],
      twitter: {
        site_name: site_name,
        site: '@thecookieshq',
        card: 'summary',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }
    options.reverse_merge!(defaults)
    set_meta_tags options
  end

  protected 

    def after_sign_in_path_for(resource)
      unless resource.admin?
        user_dashboard_path
      end
    end

    def after_sign_out_path_for(resource)
      root_path
    end

end
