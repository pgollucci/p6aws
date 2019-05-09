p6_aws_rds_db_security_group_delete() {
    local db_security_group_name="$1"
    shift 1

    p6_log_or_run aws rds delete-db-security-group --db-security-group-name $db_security_group_name "$@"
}
