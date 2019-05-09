p6_aws_lightsail_relational_database_stop() {
    local relational_database_name="$1"
    shift 1

    p6_log_or_run aws lightsail stop-relational-database --relational-database-name $relational_database_name "$@"
}
