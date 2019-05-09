p6_aws_lightsail_relational_database_delete() {
    local relational_database_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-relational-database --relational-database-name $relational_database_name "$@"
}
