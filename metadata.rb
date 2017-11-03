# encoding: utf-8

#
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

name 'linux-patch'
maintainer 'Patrick Muench'
maintainer_email 'patrick.muench1111@gmail.com'
license 'Apache-2.0'
description 'Update ubuntu System according to the InSpec linux-patch-baseline output'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.0'
chef_version '>= 12.5' if respond_to?(:chef_version)

supports 'ubuntu', '>= 12.04'

recipe 'linux-patch::default', 'Update Linux packages'

source_url 'https://github.com/atomic111/chef-linux-patch'
issues_url 'https://github.com/atomic111/chef-linux-patch/issues'
