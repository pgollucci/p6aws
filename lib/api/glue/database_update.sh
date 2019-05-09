p6_aws_glue_database_update() {
    local name="$1"
    local database_input="$2"
    shift 2

    p6_log_or_run aws glue update-database --name $name --database-input $database_input "$@"
}
