require 'rspec/core/rake_task'

task :tests => [:spec]

desc 'Task para execução dos testes'
RSpec::Core::RakeTask.new do |t|
    t.pattern = 'spec/*_test.rb'
    t.verbose = false
    t.rspec_opts = '--format html --out reports/rspec_results.html'
end