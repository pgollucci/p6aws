# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [1.0.3](https://github.com/p6m7g8/p6aws/compare/v1.0.2...v1.0.3) (2020-07-07)


### Features

* **api:** +p6_aws_logs_svc_watch_jq() ([#20](https://github.com/p6m7g8/p6aws/issues/20)) ([e92a0bb](https://github.com/p6m7g8/p6aws/commit/e92a0bb47ad029afd1a0b89dbcc7c7c85ed70370))
* **cloudwatch:** +p6_aws_logs_svc_trail_watch_jq(), +p6_aws_logs_svc_groups_list() ([#25](https://github.com/p6m7g8/p6aws/issues/25)) ([98f476d](https://github.com/p6m7g8/p6aws/commit/98f476d9959f4f8f0d5f277b6a098795d3941533))
* **sns:** inits sns and +p6_aws_sns_svc_topics_list() ([#26](https://github.com/p6m7g8/p6aws/issues/26)) ([bb3e54e](https://github.com/p6m7g8/p6aws/commit/bb3e54e0f67ab12d21d80eaa14b88e5d2eb1f13b))
* **ssm:** adds initial functions ([#18](https://github.com/p6m7g8/p6aws/issues/18)) ([5876aa8](https://github.com/p6m7g8/p6aws/commit/5876aa89a852557114380edcd3a55f63d99dbd40))


### Bug Fixes

* **ec2/ami:** fixes typo describ -> describe ([#16](https://github.com/p6m7g8/p6aws/issues/16)) ([0505644](https://github.com/p6m7g8/p6aws/commit/050564489bab24bfb3abbf92a307db01d55b0831))
* **shellcheck:** enable, fix ([#19](https://github.com/p6m7g8/p6aws/issues/19)) ([10ca2a5](https://github.com/p6m7g8/p6aws/commit/10ca2a53a8f04533e147b000102df3cfc54bc4a7))
* **svc/logs:** fixes typo in watch() ([#24](https://github.com/p6m7g8/p6aws/issues/24)) ([716d690](https://github.com/p6m7g8/p6aws/commit/716d690ac9209c6418d5458c16a8f5e198683ce7))


* **doc:** regens ([#21](https://github.com/p6m7g8/p6aws/issues/21)) ([dace382](https://github.com/p6m7g8/p6aws/commit/dace3825bdb5847d091f0b5e926d0c9572612282))
* **layout:** rename ([#23](https://github.com/p6m7g8/p6aws/issues/23)) ([46f18bc](https://github.com/p6m7g8/p6aws/commit/46f18bcfda839d895694cee28365a7bd3911ef8c))
* **shellcheck:** enables,  fixes -- execpt local ([#17](https://github.com/p6m7g8/p6aws/issues/17)) ([27963e8](https://github.com/p6m7g8/p6aws/commit/27963e80e342d7a59313ade203e0118bbe0ec1de))
* **whitespace:** indents ([#15](https://github.com/p6m7g8/p6aws/issues/15)) ([f5c216f](https://github.com/p6m7g8/p6aws/commit/f5c216f381e1472d39c9abc98d2e05eeef4f5185))

### [1.0.3](https://github.com/p6m7g8/p6aws/compare/v1.0.2...v1.0.3) (2020-06-17)


### Features

* **api:** +p6_aws_logs_svc_watch_jq() ([#20](https://github.com/p6m7g8/p6aws/issues/20)) ([e92a0bb](https://github.com/p6m7g8/p6aws/commit/e92a0bb47ad029afd1a0b89dbcc7c7c85ed70370))
* **ssm:** adds initial functions ([#18](https://github.com/p6m7g8/p6aws/issues/18)) ([5876aa8](https://github.com/p6m7g8/p6aws/commit/5876aa89a852557114380edcd3a55f63d99dbd40))


### Bug Fixes

* **ec2/ami:** fixes typo describ -> describe ([#16](https://github.com/p6m7g8/p6aws/issues/16)) ([0505644](https://github.com/p6m7g8/p6aws/commit/050564489bab24bfb3abbf92a307db01d55b0831))
* **shellcheck:** enable, fix ([#19](https://github.com/p6m7g8/p6aws/issues/19)) ([10ca2a5](https://github.com/p6m7g8/p6aws/commit/10ca2a53a8f04533e147b000102df3cfc54bc4a7))


* **doc:** regens ([e5e64b7](https://github.com/p6m7g8/p6aws/commit/e5e64b7f7c031ed865f76a968ebb8342ee7ac6bb))
* **shellcheck:** enables,  fixes -- execpt local ([#17](https://github.com/p6m7g8/p6aws/issues/17)) ([27963e8](https://github.com/p6m7g8/p6aws/commit/27963e80e342d7a59313ade203e0118bbe0ec1de))
* **whitespace:** indents ([#15](https://github.com/p6m7g8/p6aws/issues/15)) ([f5c216f](https://github.com/p6m7g8/p6aws/commit/f5c216f381e1472d39c9abc98d2e05eeef4f5185))

### [1.0.2](https://github.com/p6m7g8/p6aws/compare/v1.0.1...v1.0.2) (2020-06-05)


### Features

* **codebuild:** adds list, get, describe apis ([#9](https://github.com/p6m7g8/p6aws/issues/9)) ([d59c906](https://github.com/p6m7g8/p6aws/commit/d59c90688ba3105e0ed46bf53c6f56de2f5644f5))
* **codepipeline:** adds list, get, describe apis ([#11](https://github.com/p6m7g8/p6aws/issues/11)) ([cecb978](https://github.com/p6m7g8/p6aws/commit/cecb978702c9d1bf67784c45374cd44d91765891))
* **logs:** adds _watch() api ([#12](https://github.com/p6m7g8/p6aws/issues/12)) ([459245e](https://github.com/p6m7g8/p6aws/commit/459245ebd31e695d446f09308faef525cfcaa00a))
* **prompt:** stdizes prompt ([#13](https://github.com/p6m7g8/p6aws/issues/13)) ([7215232](https://github.com/p6m7g8/p6aws/commit/7215232d57692ffd72166641feb5d578803ea3fd))
* **secretsmanager:** adds list, get, describe apis ([#10](https://github.com/p6m7g8/p6aws/issues/10)) ([0f99b08](https://github.com/p6m7g8/p6aws/commit/0f99b0857854761ce39879753409ad20c5e72543))

### 1.0.1 (2020-05-29)


### Features

* **cdk:** adds prompt line ([5eb1631](https://github.com/p6m7g8/p6aws/commit/5eb163111292f607ff1eef6cf94f26ee44d84fe4))
* **cicd:** make release runs the whole shebang now ([#8](https://github.com/p6m7g8/p6aws/issues/8)) ([82af096](https://github.com/p6m7g8/p6aws/commit/82af096d1af65f2b774e715ef133392d2a3f2ab2))
* **kms:** adds list functions ([07b7e0a](https://github.com/p6m7g8/p6aws/commit/07b7e0a40cc8d52ea31a0941d297d19378aeeaf5))
* **regions:** adds `p6_aws_ec2_svc_regions_list()` and `p6_aws_ec2_svc_regions_iterator()` ([507af84](https://github.com/p6m7g8/p6aws/commit/507af8429bb451922289b3e99f8e62be172ad2a2))


* **docs:** regen ([#6](https://github.com/p6m7g8/p6aws/issues/6)) ([89d36f4](https://github.com/p6m7g8/p6aws/commit/89d36f45e64aab1e1f74f153e86055090d6ad613))
* **docs:** regen ([#6](https://github.com/p6m7g8/p6aws/issues/6)) ([adff483](https://github.com/p6m7g8/p6aws/commit/adff483d1128395384c260a73003bd260d721fa4))
* **mergify:** adds config ([8e98e80](https://github.com/p6m7g8/p6aws/commit/8e98e808a988e16856052558de8e8f5af02a4ea5))
* **mergify:** adds config ([1195fdc](https://github.com/p6m7g8/p6aws/commit/1195fdca525ca96792fd4920f15301b274b84d8a))
* **prompt:** p6ify ([#5](https://github.com/p6m7g8/p6aws/issues/5)) ([dd537ab](https://github.com/p6m7g8/p6aws/commit/dd537ab91fafff28f03f9d06bc4e81ff9366e034))
* **prompt:** p6ify ([#5](https://github.com/p6m7g8/p6aws/issues/5)) ([a934f11](https://github.com/p6m7g8/p6aws/commit/a934f11110c5e1992c90057ab94e6cb2e582619e))
* **prompt:** standardize on _prompt_info ([#3](https://github.com/p6m7g8/p6aws/issues/3)) ([0321984](https://github.com/p6m7g8/p6aws/commit/0321984ae98a3dc0dca6b21e350225760286ffbd))
* **prompt:** standardize on _prompt_info ([#3](https://github.com/p6m7g8/p6aws/issues/3)) ([b6e5211](https://github.com/p6m7g8/p6aws/commit/b6e52114c39fee920fecb560b38d259c5fd66f97))
* **readme:** regen ([#7](https://github.com/p6m7g8/p6aws/issues/7)) ([b7332a4](https://github.com/p6m7g8/p6aws/commit/b7332a4bf349f78590f358b83a8cb3bcc659c9f7))
* **readme:** regen ([#7](https://github.com/p6m7g8/p6aws/issues/7)) ([520bbcc](https://github.com/p6m7g8/p6aws/commit/520bbcc5b8702ec5b15dc18241a59f5943d432f9))
* **semqntic:** adds semantic.yml ([#4](https://github.com/p6m7g8/p6aws/issues/4)) ([3607687](https://github.com/p6m7g8/p6aws/commit/360768784765b96508358d2680bdb271b9eaa127))
* **semqntic:** adds semantic.yml ([#4](https://github.com/p6m7g8/p6aws/issues/4)) ([0e6d82d](https://github.com/p6m7g8/p6aws/commit/0e6d82d3b3b417d909985c92f9c0de993dfc5f06))
