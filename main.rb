require './menu'
require_relative './src/app'

class Options
  include Menu

  def initialize
    @app = App.new(self)
    @app.load
    puts 'Welcome to a Catalog of your things!'
    show_options
  end
end

def main
  Options.new
end

main
