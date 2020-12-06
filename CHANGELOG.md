# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [2.1.0](https://github.com/p6m7g8/p6aws/compare/v2.0.0...v2.1.0) (2020-12-06)


### Features

* **api:** centralize ::version() ([0c7618c](https://github.com/p6m7g8/p6aws/commit/0c7618cc4ed3fa3ff3198fc58f6d8384d11ee095))
* **community:** adds CODE_OF_CONDUCT ([c18c018](https://github.com/p6m7g8/p6aws/commit/c18c018e958b7b4172aa8b0064f1190a043d4b50))
* **github:** adds ISSUE_TEMPLATEs ([7a7fca5](https://github.com/p6m7g8/p6aws/commit/7a7fca530880b2bf459082c9e25e6a0d5782c998))
* **org:** stubs out some su stuff ([#45](https://github.com/p6m7g8/p6aws/issues/45)) ([7ab0ace](https://github.com/p6m7g8/p6aws/commit/7ab0ace8367abc2468b4cdf3c730fdba836d0d98))


* **community:** rely on the .github/ in the org ([#47](https://github.com/p6m7g8/p6aws/issues/47)) ([c533b8c](https://github.com/p6m7g8/p6aws/commit/c533b8c5ca7f5b38316b95a985420f8ab8db5b20)), closes [#45](https://github.com/p6m7g8/p6aws/issues/45) [#46](https://github.com/p6m7g8/p6aws/issues/46) [#45](https://github.com/p6m7g8/p6aws/issues/45)
* **docs:** fixes whitespace ([642a1b2](https://github.com/p6m7g8/p6aws/commit/642a1b2f7d825341963e3a730b35e11c12757a31))
* **README:** fixes module expansion, adds CodeCov and Synk badges ([#48](https://github.com/p6m7g8/p6aws/issues/48)) ([74593bb](https://github.com/p6m7g8/p6aws/commit/74593bb3d9c696e525106bf5e587536b1aa1bdad))
* **README:** fleshes out README.md ([#44](https://github.com/p6m7g8/p6aws/issues/44)) ([c524ee2](https://github.com/p6m7g8/p6aws/commit/c524ee236848f9fbdcabbaa15563ad57a1cc46b1))
* **README:** updates to template v2.0 ([#46](https://github.com/p6m7g8/p6aws/issues/46)) ([a504362](https://github.com/p6m7g8/p6aws/commit/a504362850f917e4631b79510ede79a5f1fb2f01)), closes [#45](https://github.com/p6m7g8/p6aws/issues/45)
* **semantic:** no longer needed, defaults are fine ([8fb1950](https://github.com/p6m7g8/p6aws/commit/8fb195053208c9971be4aef4bb7f5e3649ddd85e))

## [2.0.0](https://github.com/p6m7g8/p6aws/compare/v1.0.4...v2.0.0) (2020-10-11)


### Features

* **api:** +p6_aws_eks_svc_cluster_status() ([#32](https://github.com/p6m7g8/p6aws/issues/32)) ([987bbcb](https://github.com/p6m7g8/p6aws/commit/987bbcb6baf9489b5d0870c11eb77ec45b77a524))
* **svc:** adds dynamodb ([#33](https://github.com/p6m7g8/p6aws/issues/33)) ([94658dc](https://github.com/p6m7g8/p6aws/commit/94658dc6b97ff5e2137d89c71069cd7a29ba942d))


### Bug Fixes

* **api:** move `p6_aws_cdk_prompt_info` -> `p6m7g8/p6df-awscdk`, depends on `p6m7g8/p6types` ([#37](https://github.com/p6m7g8/p6aws/issues/37)) ([3456768](https://github.com/p6m7g8/p6aws/commit/345676839a19d6b534b49c7542dd5c6e9b78d1d1))
* **p6_aws_eks_svc_cluster_logging_enable:** positional to name; stack_name is now a param ([#31](https://github.com/p6m7g8/p6aws/issues/31)) ([3afc538](https://github.com/p6m7g8/p6aws/commit/3afc538df09c21930f212eeb4182a71f835421e8))
* **p6_aws_shortcuts_gen:** remove subshell variable, set default_region, only create funcs once, return the list of all ([#35](https://github.com/p6m7g8/p6aws/issues/35)) ([98e343f](https://github.com/p6m7g8/p6aws/commit/98e343fcc711664ff8c53e735c2f52e365e99986))


* **doc:** regen ([#36](https://github.com/p6m7g8/p6aws/issues/36)) ([bc3799a](https://github.com/p6m7g8/p6aws/commit/bc3799a69dd7cb81f2bc27144ad21963de95434a))
* **indent:** fixes indent ([#34](https://github.com/p6m7g8/p6aws/issues/34)) ([c3a06ca](https://github.com/p6m7g8/p6aws/commit/c3a06ca1afc87627991b8eac8eb8c2c000390fd9))

### [1.0.4](https://github.com/p6m7g8/p6aws/compare/v1.0.3...v1.0.4) (2020-09-20)


### Features

* **api:** adds eks ([#28](https://github.com/p6m7g8/p6aws/issues/28)) ([73a1c6e](https://github.com/p6m7g8/p6aws/commit/73a1c6e3466cc11190a57e44e42e4b266b746de1))
* **prompt:** adds eks prompt ([#29](https://github.com/p6m7g8/p6aws/issues/29)) ([4fe9b4d](https://github.com/p6m7g8/p6aws/commit/4fe9b4d63e719001fa10a760afe794a16b027dfd))


* **doc:** regens docs ([#30](https://github.com/p6m7g8/p6aws/issues/30)) ([1e4fdba](https://github.com/p6m7g8/p6aws/commit/1e4fdbaac4cdcf4c62c9a95293d3a38c6e0c71b5))

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
