p6_aws_glue_crawler_start() {
    local name="$1"
    shift 1

    p6_log_or_run aws glue start-crawler --name $name "$@"
}
