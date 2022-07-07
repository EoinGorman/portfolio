# frozen_string_literal: true

require 'rubocop/rake_task'

namespace :style do
  desc 'Runs rubocop -A with rubocop-rails'
  task rubocop: :environment do
    RuboCop::RakeTask.new(:rubocop) do |task|
      task.requires << 'rubocop-rails'
      task.options = ['-A']
    end
    Rake::Task['rubocop'].invoke
  end
end
