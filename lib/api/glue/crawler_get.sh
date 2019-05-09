p6_aws_glue_crawler_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws glue get-crawler --name $name "$@"
}
