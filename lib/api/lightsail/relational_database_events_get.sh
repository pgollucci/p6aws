p6_aws_lightsail_relational_database_events_get() {
    local relational_database_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-relational-database-events --relational-database-name $relational_database_name "$@"
}
