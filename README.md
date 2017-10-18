# update-linux (Chef cookbook)

## Description
It takes the output from InSpec linux-patch-baseline and apply a update for outdated packages.

## Platform

* Ubuntu > 12.04

## Usage

Install dependencies

```
bundle install
```

Create a VM in AWS ec2
```
bundle exec kitchen create
```

Store the InSpec json output in a data_bag.
```
inspec exec ./ -t ssh://ubuntu@<dns-name> --key-files=<keyfile> --sudo --format=json > ../update-linux/test/integration/data_bags/packagelist/update.json
```

Apply updates
```
bundle exec kitchen converge
```

Verify the results

```
bundle exec kitchen verify
```

## Contributors + Kudos

* Patrick Muench [atomic111](patrick.muench1111@gmail.com)
* Christoph Hartmann [chris-rock](https://github.com/chris-rock)
* Dominik Richter [arlimus](https://github.com/arlimus)

## Contributing

See [contributor guideline](CONTRIBUTING.md).

## License and Author

* Author:: Patrick Muench <patrick.muench1111@gmail.com>
* Author:: DevSec Hardening Framework

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
