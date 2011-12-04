# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# guard 'rspec', :version => 2, :cli => "--colour --fail-fast --format nested" do
#   watch(%r{^spec/.+_spec\.rb})
#   watch(%r{^lib/(.+)\.rb})     { |m| "spec/#{m[1]}_spec.rb" }
#   watch(%r{^lib/blazing/(.+)\.rb})     { |m| "spec/blazing/#{m[1]}_spec.rb" }
#   watch('spec/spec_helper.rb') { "spec" }
#   watch(%r{^lib/blazing/templates/(.+)}) { "spec" }
#   watch('lib/blazing/runner.rb') { "spec/blazing/integration/*" }
# end

guard :rspectacle do
  watch('spec/spec_helper.rb')                        { "spec" }
  watch(%r{^lib/(.+)\.rb})     { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/blazing/(.+)\.rb})     { |m| "spec/blazing/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb') { "spec" }
  watch(%r{^lib/blazing/templates/(.+)}) { "spec" }
  watch('lib/blazing/runner.rb') { "spec/blazing/integration/*" }
  # watch('config/routes.rb')                           { "spec/routing" }
  # watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  # watch(%r{^spec/.+_spec\.rb$})
  # watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  # watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
end
