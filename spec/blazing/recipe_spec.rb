require 'spec_helper'
require 'blazing/recipe'

module Blazing
  describe Recipe do

    describe '.init_by_name' do
      before :each do
        class Recipe::Dummy < Blazing::Recipe
          def run(target_options = {})
            super target_options
          end
        end
      end

      it 'initializes the correct recipe' do
        Recipe.init_by_name(:dummy).should be_a Recipe::Dummy
      end
    end

    describe '.list' do
      it 'retunrs an array of the available recipe classes' do
        Recipe.list.should include Recipe::Dummy
      end
    end

    describe '#run' do
      it 'overrides global recipe options with target options' do
        pending
        @production_url = '/some/target'
        @dummy_recipe = Recipe::Dummy.new(:some_option => 'global')
        @config = Config.new
        @config.target(:production, @production_url, :some_option => 'target-specific')
        @config.instance_variable_set('@recipes', [@dummy_recipe])
        @dummy_recipe.run(:some_option => 'target-specific')
        @dummy_recipe.instance_variable_get('@options')[:some_option].should == 'target-specific'
      end
    end
  end
end

