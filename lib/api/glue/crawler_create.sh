p6_aws_glue_crawler_create() {
    local name="$1"
    local role="$2"
    local database_name="$3"
    local targets="$4"
    shift 4

    p6_log_or_run aws glue create-crawler --name $name --role $role --database-name $database_name --targets $targets "$@"
}
