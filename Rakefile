require 'rspec/core/rake_task'

task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = "spec/**/*_spec.rb"
  end
end


task :run do
  system("ruby venice_routes.rb")
end


