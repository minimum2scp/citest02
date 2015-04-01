require 'rspec/core/rake_task'

desc 'run all tests'
task :default => 'spec:domains:all'

namespace :spec do
  namespace :domains do
    targets = Dir['spec/domains/**/*_spec.rb'].map{|f| File.basename(f, '.rb').sub(/_spec\z/,'') }
    task :all => targets.map{|target| "spec:domains:#{target}" }

    targets.each do |target|
      desc "run test to #{target}"
      RSpec::Core::RakeTask.new(target.to_sym) do |t|
        t.pattern = "spec/domains/#{target}_spec.rb"
      end
    end
  end
end

