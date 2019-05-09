p6_aws_glue_database_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws glue delete-database --name $name "$@"
}
