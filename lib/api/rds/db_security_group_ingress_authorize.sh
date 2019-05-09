p6_aws_rds_db_security_group_ingress_authorize() {
    local db_security_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds authorize-db-security-group-ingress --db-security-group-name $db_security_group_name "$@"
}
