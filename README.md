### init.zsh:
- p6df::modules::p6aws::deps()
- p6df::modules::p6aws::init()

### cfg.sh:
- code rc = p6_aws_cfg_filter_secret(val)
- p6_aws_cfg_clear()
- p6_aws_cfg_realize(cfg)
- p6_aws_cfg_reset()
- p6_aws_cfg_restore_saved()
- p6_aws_cfg_restore_source()
- p6_aws_cfg_save()
- p6_aws_cfg_save_source()
- p6_aws_cfg_show()
- str str = p6_aws_cfg_prompt_info(kind)
- words env_vars = p6_aws_cfg_vars()
- words env_vars = p6_aws_cfg_vars_min()
- words env_vars = p6_aws_cfg_vars_secret()
- words kinds = p6_aws_cfg_kinds()

### cli.sh:
- code rc = p6_aws_cmd(service, cmd, ...)
- p6_aws_cli_qload(svc)
- str str = p6_aws_cli_jq_tag_name_get()

### debug.sh:

### env.sh:
- str old = p6_aws_cfg_env_access_key_id_active(val)
- str old = p6_aws_cfg_env_access_key_id_saved(val)
- str old = p6_aws_cfg_env_access_key_id_source(val)
- str old = p6_aws_cfg_env_ca_bundle_active(val)
- str old = p6_aws_cfg_env_ca_bundle_saved(val)
- str old = p6_aws_cfg_env_ca_bundle_source(val)
- str old = p6_aws_cfg_env_config_file_active()
- str old = p6_aws_cfg_env_config_file_saved(val)
- str old = p6_aws_cfg_env_config_file_source(val)
- str old = p6_aws_cfg_env_default_profile_active(val)
- str old = p6_aws_cfg_env_default_profile_saved(val)
- str old = p6_aws_cfg_env_default_profile_source(val)
- str old = p6_aws_cfg_env_default_region_active(val)
- str old = p6_aws_cfg_env_default_region_saved(val)
- str old = p6_aws_cfg_env_default_region_source(val)
- str old = p6_aws_cfg_env_env_active(val)
- str old = p6_aws_cfg_env_env_saved(val)
- str old = p6_aws_cfg_env_env_source(val)
- str old = p6_aws_cfg_env_env_tag_active(val)
- str old = p6_aws_cfg_env_env_tag_saved(val)
- str old = p6_aws_cfg_env_env_tag_source(val)
- str old = p6_aws_cfg_env_metadata_service_num_attempts_active(val)
- str old = p6_aws_cfg_env_metadata_service_num_attempts_saved(val)
- str old = p6_aws_cfg_env_metadata_service_num_attempts_source(val)
- str old = p6_aws_cfg_env_metadata_service_timeout_active(val)
- str old = p6_aws_cfg_env_metadata_service_timeout_saved(val)
- str old = p6_aws_cfg_env_metadata_service_timeout_source(val)
- str old = p6_aws_cfg_env_org_active(val)
- str old = p6_aws_cfg_env_org_saved(val)
- str old = p6_aws_cfg_env_org_source(val)
- str old = p6_aws_cfg_env_output_active(val)
- str old = p6_aws_cfg_env_output_saved(val)
- str old = p6_aws_cfg_env_output_source(val)
- str old = p6_aws_cfg_env_profile_active(val)
- str old = p6_aws_cfg_env_profile_saved(val)
- str old = p6_aws_cfg_env_profile_source(val)
- str old = p6_aws_cfg_env_region_active(val)
- str old = p6_aws_cfg_env_region_saved(val)
- str old = p6_aws_cfg_env_region_source(val)
- str old = p6_aws_cfg_env_secret_access_key_active(val)
- str old = p6_aws_cfg_env_secret_access_key_saved(val)
- str old = p6_aws_cfg_env_secret_access_key_source(val)
- str old = p6_aws_cfg_env_session_token_active(val)
- str old = p6_aws_cfg_env_session_token_saved(val)
- str old = p6_aws_cfg_env_session_token_source(val)
- str old = p6_aws_cfg_env_shared_credentials_file_active(val)
- str old = p6_aws_cfg_env_shared_credentials_file_saved(val)
- str old = p6_aws_cfg_env_shared_credentials_file_source(val)
- str old = p6_aws_cfg_env_vpc_id_active(val)
- str old = p6_aws_cfg_env_vpc_id_saved(val)
- str old = p6_aws_cfg_env_vpc_id_source(val)

### p6_return.sh:
- obj cfg = p6_return_aws_cfg(cfg)
- str account_id = p6_return_aws_account_id(account_id)
- str arn = p6_return_aws_arn()
- str logical_id = p6_return_aws_logical_id(logical_id)
- str resource_id = p6_return_aws_resource_id(resource_id)

### shortcuts.sh:
- p6_aws_shortcuts_ungen(org)
- str  = p6_aws_shortcuts_gen(org, cred_file)
- str fn_profile = p6_aws_shortcuts_profile_to_fn(proifle)
- str p6_awsa_ = p6_aws_shortcuts_prefix()

### main.sh:
- p6_aws_autoscaling_svc_asg_act_deltailed_list(asg_name)
- p6_aws_autoscaling_svc_asg_act_list(asg_name)
- p6_aws_autoscaling_svc_asg_create(asg_name, min_size, max_size, desired_capacity, lt_id, lt_name, lt_version, subnet_type, [vpc_id=$AWS_VPC])
- p6_aws_autoscaling_svc_asg_target_group_arn(asg_name, target_group_arn)
- p6_aws_autoscaling_svc_asgs_list()
- p6_old_aws_autoscaling_svc_asg_load_balancer_names(asg_name, load_balancer_names)
- p6_old_aws_autoscaling_svc_lc_user_data_show(lc_name)
- p6_old_aws_autoscaling_svc_lcs_list()

### main.sh:
- p6_aws_cloudformation_svc_list()

### logs.sh:
- p6_aws_logs_svc_groups_list()
- p6_aws_logs_svc_trail_watch_jq()
- p6_aws_logs_svc_watch(log_group_name)
- p6_aws_logs_svc_watch_jq(log_group_name)

### main.sh:
- p6_aws_codebuild_build_get(build_id)
- p6_aws_codebuild_svc_builds_list()
- p6_aws_codebuild_svc_project_build_list([project_name=$AWS_CODEBUILD_PROJECT_NAME])
- p6_aws_codebuild_svc_projects_list()

### main.sh:
- p6_aws_codepipeline_svc_list()

### main.sh:
- p6_aws_dynamodb_svc_table_all(table_name)
- p6_aws_dynamodb_svc_table_describe(table_name)
- p6_aws_dynamodb_svc_tables_list()

### ami.sh:
- p6_aws_ec2_svc_ami_show(ami_id)
- p6_aws_ec2_svc_amis_list()
- p6_aws_ec2_svc_amis_mine_list()
- str ami_id = p6_aws_ec2_svc_ami_id_from_instance_id(instance_id)
- str ami_id = p6_aws_ec2_svc_amis_amazon2_latest()
- str ami_id = p6_aws_ec2_svc_amis_freebsd12_latest()
- str ami_id = p6_aws_ec2_svc_amis_rhel8_latest()
- str ami_id = p6_aws_ec2_svc_amis_ubuntu18_latest()
- str ami_name = p6_aws_ec2_svc_ami_name_from_instance_id(instance_id)
- str user = p6_aws_ec2_svc_user_from_ami_name(ami_name)
- words ami_ids = p6_aws_ec2_svc_ami_find_id(glob)

### ec2.sh:
- p6_aws_ec2_svc_instance_show(instance_id)
- p6_aws_ec2_svc_instances_list([vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_launch_template_create(lt_name, ami_id, [instance_type=t3a.nano], sg_ids, key_name)
- p6_aws_ec2_svc_launch_templates_list()
- p6_aws_ec2_svc_volumes_list()
- str instance_id = p6_aws_ec2_svc_instance_create(name, ami_id, [instance_type=t3a.nano], sg_ids, subnet_id, key_name, [user_data=])
- str instance_id = p6_aws_ec2_svc_instance_id_from_name_tag(name)
- str private_ip = p6_aws_ec2_svc_instance_private_ip(instance_id)
- str public_ip = p6_aws_ec2_svc_instance_public_ip(instance_id)

### network.sh:
- p6_aws_ec2_svc_eni_list([vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_nat_gateway_show([vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_regions_iterator()
- p6_aws_ec2_svc_regions_list()
- p6_aws_ec2_svc_rtb_show(rtb_id, [vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_rtbs_list([vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_subnet_get(subnet_type, [vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_subnets_list([vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_vpcs_list()
- words subnet_ids = p6_aws_ec2_svc_subnet_ids_get(subnet_type, [vpc_id=$AWS_VPC_ID])

### sg.sh:
- p6_aws_ec2_svc_sg_delete(group_name)
- p6_aws_ec2_svc_sg_id_from_tag_name(tag_name, [vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_sg_show(security_group_id_or_name, [vpc_id=$AWS_VPC_ID])
- p6_aws_ec2_svc_sgs_list([vpc_id=$AWS_VPC_ID])
- p6_old_aws_ec2_svc_sg_id_from_group_name(group_name, [vpc_id=$AWS_VPC_ID])
- str sg_id = p6_aws_ec2_svc_sg_create(desc, tag_name, [vpc_id=$AWS_VPC])

### main.sh:
- p6_aws_eks_svc_cluster_logging_enable([cluster_name=$AWS_EKS_CLUSTER_NAME])
- p6_aws_eks_svc_kubeconfig_update(stack_name)
- str cluster_status = p6_aws_eks_svc_cluster_status([cluster_name=$AWS_EKS_CLUSTER_NAME])

### prompt.sh:
- p6_aws_eks_prompt_info()

### main.sh:
- p6_aws_ec2_svc_elb_listeners_list(load_balancer_name)
- p6_aws_elb_svc_create(elb_name, [listeners=http], [subnet_type=Public], [vpc_id=$AWS_VPC])
- p6_aws_elb_svc_list()

### main.sh:
- p6_aws_alb_svc_create(alb_name, [subnet_type=Public], [vpc_id=$AWS_VPC_ID])
- p6_aws_alb_svc_list()
- p6_aws_alb_svc_listener_create(alb_arn, target_group_arn)
- p6_aws_alb_svc_listeners_list(load_balancer_name)
- p6_aws_alb_svc_target_group_create(tg_name, [vpc_id=AWS_VPC_ID])

### main.sh:
- aws_arn role_arn = p6_aws_iam_svc_role_create(role_path, role_name, assume_role_policy_document)
- p6_aws_iam_svc_instance_profiles_list()
- p6_aws_iam_svc_password_policy_default()
- p6_aws_iam_svc_policy_cloudtrail_write(resource)
- p6_aws_iam_svc_policy_create(policy_full_path, policy_description, policy_document)
- p6_aws_iam_svc_policy_s3_cloudtrail_write(trail_bucket, account_id)
- p6_aws_iam_svc_policy_saml(account_id, provider)
- p6_aws_iam_svc_policy_service_write(service)
- p6_aws_iam_svc_policy_to_role(role_full_path, policy_arn)
- p6_aws_iam_svc_role_policies(role_name)
- p6_aws_iam_svc_role_saml_create(role_full_path, policy_arn, account_id, provider)
- p6_aws_iam_svc_roles_list()
- p6_aws_iam_svc_users_list()

### main.sh:
- p6_aws_imagebuilder_svc_dc_list()
- p6_aws_imagebuilder_svc_ic_list()
- p6_aws_imagebuilder_svc_images_list()
- p6_aws_imagebuilder_svc_ir_list()
- p6_aws_imagebuilder_svc_pipelines_list()

### main.sh:
- p6_aws_kms_svc_key_create(key_description, key_policy)
- p6_aws_kms_svc_list_aliases()
- p6_aws_kms_svc_list_aliases_aws()
- p6_aws_kms_svc_list_aliases_mine()

### main.sh:
- p6_aws_lambda_svc_invoke(function_name, ...)
- p6_aws_lambda_svc_list()

### crud.sh:
- aws_account_id account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
- aws_account_id account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
- aws_account_id account_id = p6_aws_organizations_svc_account_id_from_name(account_name)
- bool bool = p6_aws_organizations_svc_account_wait_for(cas_id, car)
- p6_aws_organizations_svc_account_create_stop(status, cas_id, status, car)
- p6_aws_organizations_svc_accounts_list()
- str status = p6_aws_organizations_svc_account_create_status(car_id)

### main.sh:
- aws_account_id account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
- aws_account_id account_id = p6_aws_organizations_svc_account_create_or_fetch(account_alias, account_email, account_map)
- aws_account_id account_id = p6_aws_organizations_svc_account_id_from_alias(account_alias)
- bool bool = p6_aws_organizations_svc_account_wait_for(cas_id, car)
- p6_aws_organizations_svc_account_create_stop(status, cas_id, status, car)
- p6_aws_organizations_svc_account_init(org, account_alias, account_email, account_id, saml_file, saml_provider, role_full_path, policy_arn, provider)
- p6_aws_organizations_svc_accounts_list()
- p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd, ...)
- p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file)
- p6_aws_organizations_svc_su_un()
- path saml_file = p6_aws_organizations_svc_account_make(cred_file, src_cred_file, assumed_cred_file, org, account_alias, account_email, account_map, saml_provider, saml_provider_email, region, output, role_full_path, policy_arn, cert_subject, cert_bits, cert_exp)
- str state = p6_aws_organizations_svc_account_status_create(car_id)

### sts.sh:
- p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd, ...)
- p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file)
- p6_aws_organizations_svc_su_un()

### main.sh:
- p6_aws_s3_svc_bucket_list(bucket)
- p6_aws_s3_svc_bucket_policy()
- p6_aws_s3_svc_buckets_list()

### main.sh:
- false  = p6_aws_s3api_svc_bucket_delete_with_versioned_objects(bucket)
- p6_aws_s3api_svc_bucket_list_objects_all(bucket)
- p6_aws_s3api_svc_bucket_objects_deleted(bucket)
- p6_aws_s3api_svc_bucket_objects_versions_list(bucket)
- p6_aws_s3api_svc_bucket_policy(bucket)

### main.sh:
- p6_aws_secretsmanager_svc_list()

### main.sh:
- p6_aws_sns_svc_topics_list()

### main.sh:
- p6_aws_ssh_svc_do(tag, type)

### main.sh:
- p6_aws_ssm_svc_documents_list()
- p6_aws_ssm_svc_documents_list_aws()
- p6_aws_ssm_svc_documents_list_of()

### main.sh:
- p6_aws_stepfunctions_svc_list()
- p6_aws_stepfunctions_svc_state_machine_show(state_machine, ...)

### main.sh:
- p6_aws_sts_svc_login(login, [account_alias=$AWS_ORG], [org=$AWS_ORG], [auth_type=saml])
- p6_aws_sts_svc_role_assume(role_arn, role_session_name)
- p6_aws_sts_svc_role_unassume()
- str role_arn = p6_aws_sts_svc_role_assume_saml(auth, assertion64)

### prompt.sh:
- str str = p6_aws_sts_prompt_info(creds)

### util.sh:
- obj creds = p6_aws_sts_svc_json_role_load(json_role_file)
- obj role = p6_aws_sts_svc_assertion_decode(assertion64)
- p6_aws_sts_svc_whoami()
- path dir = p6_aws_sts_svc_dir()
- path file = p6_aws_sts_svc_cred_file()
- str assertion64 = p6_aws_sts_svc_login_saml(auth)
- str fn_profile = p6_aws_sts_svc_profile_build(org, account_alias, role_arn)
- str org = p6_aws_sts_svc_org()
- str output = p6_aws_sts_svc_output()
- str region = p6_aws_sts_svc_region()

### template.sh:
- p6_aws_template_process(infile, ...)

