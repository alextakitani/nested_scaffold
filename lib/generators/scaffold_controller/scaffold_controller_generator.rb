require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'
require File.join(File.dirname(__FILE__), '../erb/erb_generator')
require File.join(File.dirname(__FILE__), '../haml/haml_generator')
require File.join(File.dirname(__FILE__), '../helper/helper_generator')
require File.join(File.dirname(__FILE__), '../test_unit/scaffold_generator')
require File.join(File.dirname(__FILE__), '../base')

module Rails
  module Generators
    class RespondersControllerGenerator < ScaffoldControllerGenerator
      source_root File.expand_path("../templates", __FILE__)

      protected

      def flash?
        if defined?(ApplicationController)
          !ApplicationController.responder.ancestors.include?(Responders::FlashResponder)
        else
          Rails.application.config.responders.flash_keys.blank?
        end
      end

      def attributes_params
        "#{singular_table_name}_params"
      end
    end
  end
end


module NestedScaffold
  module Generators
    class ScaffoldControllerGenerator < ::Rails::Generators::ScaffoldControllerGenerator
      include ::NestedScaffold::Base

      source_root File.expand_path('../templates', __FILE__)

      # override ScaffoldControllerGenerator
      hook_for :template_engine
      #hook_for :test_framework, :in => 'nested_scaffold:scaffold'

      # override ScaffoldControllerGenerator
      hook_for :helper, :as => :scaffold do |invoked|
        invoke invoked, [ controller_name ]
      end
    end
  end
end