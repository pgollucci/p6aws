p6_aws_glue_database_create() {
    local database_input="$1"
    shift 1

    p6_log_or_run aws glue create-database --database-input $database_input "$@"
}
