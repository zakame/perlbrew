#
# Author:: David A. Golden
# Contributors:: J.R. Mash <jrmash@cpan.org>
# Cookbook Name:: perlbrew
# Provider:: perlbrew_switch
#
# Copyright:: 2012, David A. Golden <dagolden@cpan.org>
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
action :off do
    perlbrew_bin = "#{new_resource.root}/bin/perlbrew"
    
    execute "#{perlbrew_bin} switch-off" do
        only_if { ::File.exists?(perlbrew_bin) }
    end
end

action :switch do
    perlbrew_bin = "#{new_resource.root}/bin/perlbrew"
    
    execute "#{perlbrew_bin} switch #{new_resource.version}" do
        only_if { ::File.exists?(perlbrew_bin) }
    end
end
