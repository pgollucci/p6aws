# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [2.1.3](https://github.com/p6m7g8/p6aws/compare/v2.1.2...v2.1.3) (2021-04-04)

### [2.1.2](https://github.com/p6m7g8/p6aws/compare/v2.1.1...v2.1.2) (2021-04-04)


### Features

* **api:** moves _write to p6-cirrus ([#91](https://github.com/p6m7g8/p6aws/issues/91)) ([afe1b82](https://github.com/p6m7g8/p6aws/commit/afe1b8284818fcbf21594ed89da7429f1406b3f4))
* **iam:** adds `p6_aws_svc_iam_account_alias()` ([#84](https://github.com/p6m7g8/p6aws/issues/84)) ([18046c4](https://github.com/p6m7g8/p6aws/commit/18046c4de2ec726e07a82bd6b2e39932e36b812a))
* **lambda:** adds some views ([#95](https://github.com/p6m7g8/p6aws/issues/95)) ([fa229dc](https://github.com/p6m7g8/p6aws/commit/fa229dc76e1a70e438b61730cb358c3f58d2d770))
* **organizations:** adds `p6_aws_svc_organizations_lz_do()` ([#82](https://github.com/p6m7g8/p6aws/issues/82)) ([529b338](https://github.com/p6m7g8/p6aws/commit/529b338c8bacbdd22e73a8d6ddc11d207c7d1f21))
* **prompt:** adds org display ([#88](https://github.com/p6m7g8/p6aws/issues/88)) ([36648fd](https://github.com/p6m7g8/p6aws/commit/36648fd97e32e152326da2faa6bbcb6826974846))


### Bug Fixes

* **cfg:** p6_aws_cfg_realize() wasn't setting AWS_DEFAULT_REGION ([#92](https://github.com/p6m7g8/p6aws/issues/92)) ([01fcca0](https://github.com/p6m7g8/p6aws/commit/01fcca0e0616da967f40f1fc89b7922fe782c0ea))
* **prompt:** standardizes prompt ([#93](https://github.com/p6m7g8/p6aws/issues/93)) ([f34bb7c](https://github.com/p6m7g8/p6aws/commit/f34bb7c73cca925852bceaf1e15e7fbdc77612e3))
* **ssh:** adds -A to forward the ssh-agent ([#90](https://github.com/p6m7g8/p6aws/issues/90)) ([995208a](https://github.com/p6m7g8/p6aws/commit/995208a206c98813a2485401461982fbe494f95e))


* **alfred:** no deps alfred setup for speed ([#81](https://github.com/p6m7g8/p6aws/issues/81)) ([5c9b80d](https://github.com/p6m7g8/p6aws/commit/5c9b80dc11cdea90252477b2282d717d4e895b9f))
* **alfred:** rerturns browser w/ federation; splits ec2/network ([#74](https://github.com/p6m7g8/p6aws/issues/74)) ([f1195cd](https://github.com/p6m7g8/p6aws/commit/f1195cd90d70493ffe5936379d27f901875e987b))
* **alfred:** split into _q and regular ([#89](https://github.com/p6m7g8/p6aws/issues/89)) ([966c31b](https://github.com/p6m7g8/p6aws/commit/966c31bdb29be2e89ee4e639f159ac2756426336))
* **alfred:** split up, rename ([#80](https://github.com/p6m7g8/p6aws/issues/80)) ([0dd6720](https://github.com/p6m7g8/p6aws/commit/0dd6720da08eaf007e7ea580817dfdd07034f12f))
* **api:** moves write actions to _write.sh in prep for extraction ([#86](https://github.com/p6m7g8/p6aws/issues/86)) ([79d7a5f](https://github.com/p6m7g8/p6aws/commit/79d7a5f3d4d56c7f5b29547c54daf51b1ba58029))
* **cfg:** adds tests for accessors ([#79](https://github.com/p6m7g8/p6aws/issues/79)) ([07713fa](https://github.com/p6m7g8/p6aws/commit/07713faf51f2898a217edcb7d30f6836a981faea))
* **doc:** regens ([#78](https://github.com/p6m7g8/p6aws/issues/78)) ([85ce1f1](https://github.com/p6m7g8/p6aws/commit/85ce1f1667a9b466b15674443d30dcc4db505cba))
* **heir:** more renames ([#85](https://github.com/p6m7g8/p6aws/issues/85)) ([f619409](https://github.com/p6m7g8/p6aws/commit/f6194099340d2bf81aaff5db24a92db878abe4bf))
* **organizations:** renames function ([#87](https://github.com/p6m7g8/p6aws/issues/87)) ([d780cae](https://github.com/p6m7g8/p6aws/commit/d780cae92f2437fa1a312847274429ad25985e5d))
* **prompt:** remove [] ([#94](https://github.com/p6m7g8/p6aws/issues/94)) ([856ee17](https://github.com/p6m7g8/p6aws/commit/856ee17d36df4cf94a63a5851357b5bb9f019365))
* clean up ([#75](https://github.com/p6m7g8/p6aws/issues/75)) ([048f822](https://github.com/p6m7g8/p6aws/commit/048f822f82ee433325706d3a11985c21e170978e))
* silences output ([#77](https://github.com/p6m7g8/p6aws/issues/77)) ([c3052db](https://github.com/p6m7g8/p6aws/commit/c3052db3054a9e2c5748c05792440354bc18759b))
* the great vscode indent of 2021 ([#76](https://github.com/p6m7g8/p6aws/issues/76)) ([aff834f](https://github.com/p6m7g8/p6aws/commit/aff834fb737ca629d76dc8b0cab044c1c194601c))

### [2.1.1](https://github.com/p6m7g8/p6aws/compare/v2.1.0...v2.1.1) (2021-03-13)


### Features

* **api:** adds transit gateway initial readers ([b8fc34a](https://github.com/p6m7g8/p6aws/commit/b8fc34a9cb116fc69d7cda09b440984707327038))
* **api:** convets to aws-vault from p6 obj ([3aac8fb](https://github.com/p6m7g8/p6aws/commit/3aac8fbcd6589abb3dff06d43f748da1e7046ee7))
* **api:** returns built in aws func generation ([#50](https://github.com/p6m7g8/p6aws/issues/50)) ([fdf6b5a](https://github.com/p6m7g8/p6aws/commit/fdf6b5ae63ac9f7540daf91f22a13bad03a592e0))


### Bug Fixes

* **api:** fixes typo in p6_aws_organizations_svc_accounts_list() aws api cli call ([#49](https://github.com/p6m7g8/p6aws/issues/49)) ([5fe0e15](https://github.com/p6m7g8/p6aws/commit/5fe0e150af176034a6d48feedfb6776e231ff2c0))
* **ssh:** minimizes output; modernizes alfred integration for ssh w/ mssh ([#51](https://github.com/p6m7g8/p6aws/issues/51)) ([944c03e](https://github.com/p6m7g8/p6aws/commit/944c03e97a5f91c4b4e05fe3462b5e3012945882))


* **alfred:** returns `talb` ([#69](https://github.com/p6m7g8/p6aws/issues/69)) ([26be689](https://github.com/p6m7g8/p6aws/commit/26be689158e14c8931eb952087137bf1e17d1dad))
* **alfred:** returns private_bastion ([#70](https://github.com/p6m7g8/p6aws/issues/70)) ([57630de](https://github.com/p6m7g8/p6aws/commit/57630ded44584a9b7474b71adbca428d1d7800d6))
* **api:** big rename ([#62](https://github.com/p6m7g8/p6aws/issues/62)) ([ba12d73](https://github.com/p6m7g8/p6aws/commit/ba12d7360e242f211f824fec273707f58336fef6))
* **api:** more renames ([#61](https://github.com/p6m7g8/p6aws/issues/61)) ([4cd1446](https://github.com/p6m7g8/p6aws/commit/4cd1446b6ef8bd3eed5891b337ec535820cbc2dc))
* **api:** p6_aws_cmd -> p6_aws_cli_cmd ([#64](https://github.com/p6m7g8/p6aws/issues/64)) ([552d6da](https://github.com/p6m7g8/p6aws/commit/552d6dac8e119befceccadd8791efde3bacea2e7))
* **api:** rename foo_svc to svc_foo ([#59](https://github.com/p6m7g8/p6aws/issues/59)) ([3dbecfb](https://github.com/p6m7g8/p6aws/commit/3dbecfbc66c0e95e41c483e745dba5dc1a67f554))
* **api:** ssh is not an aws svc ([#60](https://github.com/p6m7g8/p6aws/issues/60)) ([9bfd505](https://github.com/p6m7g8/p6aws/commit/9bfd505537e6535b4856aa487094e5b35c4e81c5))
* **api:** whoami works again ([#63](https://github.com/p6m7g8/p6aws/issues/63)) ([8910c7d](https://github.com/p6m7g8/p6aws/commit/8910c7d9058f7f22e381598c54fcc9d5e4817d0f))
* **cfg:** split cfg up ([#56](https://github.com/p6m7g8/p6aws/issues/56)) ([b9dce9d](https://github.com/p6m7g8/p6aws/commit/b9dce9d8d364cfea70e3f88e1cbf81144be03a9f))
* **doc:** fix env_* signatures to be optional ([#55](https://github.com/p6m7g8/p6aws/issues/55)) ([09f2eeb](https://github.com/p6m7g8/p6aws/commit/09f2eeb7980339e8f0da21acfc75a67317a276c9))
* **docs:** updates template source ([#52](https://github.com/p6m7g8/p6aws/issues/52)) ([d02f84a](https://github.com/p6m7g8/p6aws/commit/d02f84a762372b2641ef28e103dd2af88112a47e))
* **env:** split up by kind ([#54](https://github.com/p6m7g8/p6aws/issues/54)) ([34e2338](https://github.com/p6m7g8/p6aws/commit/34e23380afd66cfc4fbb6275f8b90cc98ac32a80))
* **heir:** deblobalize, move p6_aws_cfg_filter_secret ([#57](https://github.com/p6m7g8/p6aws/issues/57)) ([8ede5eb](https://github.com/p6m7g8/p6aws/commit/8ede5eb7d34dc9d391a86dcd5abaece136b56232))
* **heir:** more splits, renames ([#58](https://github.com/p6m7g8/p6aws/issues/58)) ([2e594b2](https://github.com/p6m7g8/p6aws/commit/2e594b28e9ee794efb717d6bef678f3ceb6fa6b9))
* **hier:** shuffles files ([#53](https://github.com/p6m7g8/p6aws/issues/53)) ([f24e5f3](https://github.com/p6m7g8/p6aws/commit/f24e5f3af3c0695abedbe0741699c5937ec4b6ec))
* **organizations:** api renames, add federation ([#73](https://github.com/p6m7g8/p6aws/issues/73)) ([cdab9bd](https://github.com/p6m7g8/p6aws/commit/cdab9bdf22b8cf9c9766b06e52501b80017ad93b))
* **organizations:** returns sts/su ([#66](https://github.com/p6m7g8/p6aws/issues/66)) ([da7b8ac](https://github.com/p6m7g8/p6aws/commit/da7b8ac429dbddb0074a2533ac0db6604511f4f7))
* **organizations:** sorts out avm/account from crud/util ([#67](https://github.com/p6m7g8/p6aws/issues/67)) ([b594de1](https://github.com/p6m7g8/p6aws/commit/b594de18e284fed62eb107a0dd16aa43fab48a64))
* **organizations:** standardizes on `account_alias` ([#71](https://github.com/p6m7g8/p6aws/issues/71)) ([c9a5cdf](https://github.com/p6m7g8/p6aws/commit/c9a5cdfca8fd6b93f1a090817f3fb24fbfe6bd1e))
* **ssh:** returns and splits ssh ([#68](https://github.com/p6m7g8/p6aws/issues/68)) ([9b0fdfd](https://github.com/p6m7g8/p6aws/commit/9b0fdfdbe1c41525ca1a37fd4e52029f4538a5d4))
* **sso:** droping jump cloud ([#72](https://github.com/p6m7g8/p6aws/issues/72)) ([023f3e6](https://github.com/p6m7g8/p6aws/commit/023f3e60de454406a8c0ce2656daa0466ad3c1b3))
* **sts:** returns assume/unassume role ([#65](https://github.com/p6m7g8/p6aws/issues/65)) ([2f5cf44](https://github.com/p6m7g8/p6aws/commit/2f5cf44fe422fe6c693da78ec10104cda66f3202))
* **ws:** indents ([198fb4b](https://github.com/p6m7g8/p6aws/commit/198fb4bf4a2ffc82fdebd8fe18fbbc6ab33466ee))
* Coc -> .github ([6c7ccd2](https://github.com/p6m7g8/p6aws/commit/6c7ccd2f80b7ec1c32b8fbced9b4d24638109dd8))

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
