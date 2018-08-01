# frozen_string_literal: true

#
# Copyright 2018 Thomas Boerger <thomas@webhippie.de>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

begin
  require "bundler"
  Bundler::GemHelper.install_tasks
rescue LoadError
  warn "failed to load bundler tasks"
end

require "rubocop/rake_task"
RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = [
    "-c",
    ".rubocop.yml"
  ]
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

require "yard"
YARD::Rake::YardocTask.new

task default: %i[spec rubocop]
