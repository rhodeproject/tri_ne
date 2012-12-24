class StaticPagesController < ApplicationController
  require 'yaml'

  def index
    logger.debug "I'm in the static_pages_controller index action!"
    yaml = YAML.load(File.open("#{Rails.root}/config/application.yml"))
    logger.debug "Parsing yaml!"
    logger.debug yaml
    @officers = yaml['officers']
    @directors = yaml['directors']
    @yaml = yaml
  end

end
