p6_aws_emr_default_roles_create() {

    p6_log_or_run aws emr create-default-roles "$@"
}
