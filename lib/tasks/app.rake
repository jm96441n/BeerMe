namespace :app do
  desc "Run all specs and features for coverage report"
  task coverage: :environment do
    Rake::Task['spec'].invoke()
    Rake::Task['cucumber'].invoke()
  end

end
