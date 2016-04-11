require 'prmd/rake_tasks/combine'
require 'prmd/rake_tasks/verify'
require 'prmd/rake_tasks/doc'

namespace :api do
  namespace :schema do
    Prmd::RakeTasks::Combine.new do |t|
      t.options[:meta] = 'docs/schema/meta.json'
      t.paths << 'docs/schema/schemata'
      t.output_file = 'docs/schema/schema.json'
    end

    Prmd::RakeTasks::Verify.new do |t|
      t.files << 'docs/schema/schema.json'
    end

    Prmd::RakeTasks::Doc.new do |t|
      t.files = { 'docs/schema/schema.json' => 'docs/api.md' }
    end
  end
end
