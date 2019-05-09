p6_aws_glue_crawler_update() {
    local name="$1"
    shift 1

    p6_log_or_run aws glue update-crawler --name $name "$@"
}
