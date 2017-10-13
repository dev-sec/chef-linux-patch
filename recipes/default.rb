# encoding: utf-8

#
# Cookbook Name:: update-linux
# Recipe:: default.rb
#
# Copyright 2017, Patrick Muench
# Copyright 2017, Hardening Framework
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

package_hash = data_bag_item('packagelist', 'update')

packagelist = []
package_hash['controls'].drop(1).each do |key, _array|
  packagelist.push(key['code_desc'].split(' ')[2])
end

apt_update 'update'

package packagelist do
  action :upgrade
end
