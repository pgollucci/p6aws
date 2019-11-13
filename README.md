### cfg.sh:
- aws_cfg cfg = p6_aws_cfg_from_cred_file(profile, cred_file)
- p6_aws_cfg_activate(profile, region, org)
- p6_aws_cfg_activate_jit(cfg)
- p6_aws_cfg_clear()
- p6_aws_cfg_reset()
- p6_aws_cfg_restore_saved()
- p6_aws_cfg_restore_source()
- p6_aws_cfg_save()
- p6_aws_cfg_save_source()
- p6_aws_cfg_show()
- str \$old\ = p6_aws_cfg_env_${func}()
- words env_vars = p6_aws_cfg_vars()
- words kinds = p6_aws_cfg_kinds()

### cli.sh:
- p6_aws_cmd(service, cmd)

### debug.sh:

### p6_return.sh:
- obj cfg = p6_return_aws_cfg(cfg)
- str account_id = p6_return_aws_account_id(account_id)
- str arn = p6_return_aws_arn()
- str logical_id = p6_return_aws_logical_id(logical_id)
- str resource_id = p6_return_aws_resource_id(resource_id)

### shortcuts.sh:
- p6_aws_shortcut_set(cfg)
- p6_aws_shortcuts(org, cred_file)
- p6_aws_shortcuts_set(org, cred_file)
- p6_aws_shortcuts_unset(org)

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

### ami.sh:
- p6_aws_ec2_svc_ami_find_id(glob)
- p6_aws_ec2_svc_ami_id_from_instance_id(instance_id)
- p6_aws_ec2_svc_ami_name_from_instance_id(instance_id)
- p6_aws_ec2_svc_amis_amazon2_latest()
- p6_aws_ec2_svc_amis_freebsd12_latest()
- p6_aws_ec2_svc_amis_list()
- p6_aws_ec2_svc_amis_mine_list()
- p6_aws_ec2_svc_amis_rhel8_latest()
- p6_aws_ec2_svc_amis_ubuntu18_latest()
- str user = p6_aws_ec2_svc_user_from_ami_name(ami_name)

### ec2.sh:
- p6_aws_ec2_svc_instance_show(instance_id)
- p6_aws_ec2_svc_instances_list([vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_launch_template_create(lt_name, ami_id, [instance_type=t3a.nano], sg_ids, key_name)
- p6_aws_ec2_svc_launch_templates_list()
- p6_aws_ec2_svc_volumes_list()
- str instance_id = p6_aws_ec2_svc_instance_create(name, ami_id, [instance_type=t3a.nano], sg_ids, subnet_id, key_name, [user_data=])
- str instance_id = p6_aws_ec2_svc_instance_id_from_name_tag(name)
- str private_ip = p6_aws_ec2_svc_instance_private_ip(instance_id)
- str public_ip = p6_aws_ec2_svc_instance_public_ip(instance_id)

### network.sh:
- p6_aws_ec2_svc_eni_list([vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_nat_gateway_show([vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_rtb_show(rtb_id, [vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_rtbs_list([vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_subnet_get(subnet_type, [vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_subnet_ids_get(subnet_type, [vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_subnets_list([vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_vpcs_list()

### sg.sh:
- p6_aws_ec2_svc_sg_delete(group_name)
- p6_aws_ec2_svc_sg_id_from_tag_name(tag_name, [vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_sg_show(security_group_id_or_name, [vpc_id=$AWS_VPC])
- p6_aws_ec2_svc_sgs_list([vpc_id=$AWS_VPC])
- p6_old_aws_ec2_svc_sg_id_from_group_name(group_name, [vpc_id=$AWS_VPC])
- str sg_id = p6_aws_ec2_svc_sg_create(desc, tag_name, [vpc_id=$AWS_VPC])

### main.sh:
- p6_aws_ec2_svc_elb_listeners_list(load_balancer_name)
- p6_aws_elb_svc_create(elb_name, [listeners=http], [subnet_type=Public], [vpc_id=$AWS_VPC])
- p6_aws_elb_svc_list()

### main.sh:
- p6_aws_alb_svc_create(alb_name, [subnet_type=Public], [vpc_id=$AWS_VPC])
- p6_aws_alb_svc_list()
- p6_aws_alb_svc_listener_create(alb_arn, target_group_arn)
- p6_aws_alb_svc_listeners_list(load_balancer_name)
- p6_aws_alb_svc_target_group_create(tg_name, [vpc_id=AWS_VPC])

### main.sh:
- p6_aws_iam_svc_instance_profiles_list()
- p6_aws_iam_svc_password_policy_default()
- p6_aws_iam_svc_policy_cloudtrail_write(resource)
- p6_aws_iam_svc_policy_s3_cloudtrail_write(trail_bucket, account_id)
- p6_aws_iam_svc_policy_saml(account_id, provider)
- p6_aws_iam_svc_policy_service_write(service)
- p6_aws_iam_svc_policy_to_role(role_full_path, policy_arn)
- p6_aws_iam_svc_role_policies(role_name)
- p6_aws_iam_svc_role_saml_create(role_full_path, policy_arn, account_id, provider)
- p6_aws_iam_svc_roles_list()
- p6_aws_iam_svc_users_list()
- str policy_arn = p6_aws_iam_svc_policy_create(policy_full_path, policy_description, policy_document)
- str role_arn = p6_aws_iam_svc_role_create(role_path, role_name, assume_role_policy_document)

### main.sh:
- p6_aws_kms_key_create(key_description, key_policy)
- p6_aws_kms_svc_list_aliases()
- str key_id = p6_aws_kms_svc_key_make(account_id, key_description, key_alias)

### main.sh:
- p6_aws_lambda_svc_invoke(function_name)
- p6_aws_lambda_svc_list()

### crud.sh:
- p6_aws_organizations_svc_account_create_stop(status, cas_id, status, car)
- p6_aws_organizations_svc_account_wait_for(cas_id, car)
- p6_aws_organizations_svc_accounts_list()
- str account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
- str account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)
- str account_id = p6_aws_organizations_svc_account_id_from_name(account_name)
- str status = p6_aws_organizations_svc_account_create_status(car_id)

### main.sh:
- p6_aws_organizations_svc_account_create_stop(status, cas_id, status, car)
- p6_aws_organizations_svc_account_id_from_alias(alias)
- p6_aws_organizations_svc_account_init(org, account_alias, account_email, account_id, saml_file, saml_provider, role_full_path, policy_arn, provider)
- p6_aws_organizations_svc_account_status_create(car_id)
- p6_aws_organizations_svc_account_wait_for(cas_id, car)
- p6_aws_organizations_svc_accounts_list()
- p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd)
- p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file)
- p6_aws_organizations_svc_su_un()
- path saml_file = p6_aws_organizations_svc_account_make(cred_file, src_cred_file, assumed_cred_file, org, account_alias, account_email, account_map, saml_provider, saml_provider_email, region, output, role_full_path, policy_arn, cert_subject, cert_bits, cert_exp)
- str  = p6_aws_organizations_svc_account_create_or_fetch(account_alias, account_email, account_map)
- str account_id = p6_aws_organizations_svc_account_create(account_name, account_email, account_name, account_email, account_email, account_alias)

### sts.sh:
- p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd)
- p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file)
- p6_aws_organizations_svc_su_un()

### main.sh:
- p6_aws_s3_svc_bucket_list()
- p6_aws_s3_svc_bucket_policy()
- p6_aws_s3_svc_buckets_list()

### main.sh:
- p6_aws_s3api_svc_bucket_delete_with_versioned_objects(bucket)
- p6_aws_s3api_svc_bucket_list_objects_all(bucket)
- p6_aws_s3api_svc_bucket_objects_deleted(bucket)
- p6_aws_s3api_svc_bucket_objects_versions_list(bucket)
- p6_aws_s3api_svc_bucket_policy(bucket)

### main.sh:
- p6_aws_ssh_svc_do(tag, type)

### main.sh:
- p6_aws_stepfunctions_svc_list()
- p6_aws_stepfunctions_svc_state_machine_show(state_machine)

### main.sh:
- p6_aws_sts_svc_cred_write(profile, region, output, aws_access_key_id, aws_secret_access_key, aws_session_token, expiration)
- p6_aws_sts_svc_jc_refresh(nicks, saml_provider_email)
- p6_aws_sts_svc_map(org)
- p6_aws_sts_svc_profiles_list(cred_file)
- p6_aws_sts_svc_refresh(cred_file, map_file, org, daas_login)
- p6_aws_sts_svc_regions_disable(account_email)
- p6_aws_sts_svc_role_assume(profile, region, output, role_arn, role_session_name, cred_file, src_cred_file, assumed_cred_file)
- p6_aws_sts_svc_role_unassume(cred_file, src_file, assumed_file)
- p6_aws_sts_svc_root_keys_delete(account_email)
- p6_aws_sts_svc_root_mfa_enable(account_email)

### util.sh:
- p6_aws_util_account_alias_to_id(account_alias, map)
- p6_aws_util_account_map(account_id, account_alias, map)
- p6_aws_util_cli_qload()
- p6_aws_util_include_service(service)
- p6_aws_util_nicks(org, map)
- p6_aws_util_region_for_profile_from_cred_file(profile, cred_file)
- p6_aws_util_template_process(infile)
