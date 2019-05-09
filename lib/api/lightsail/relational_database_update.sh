p6_aws_lightsail_relational_database_update() {
    local relational_database_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail update-relational-database --relational-database-name $relational_database_name "$@"
}
