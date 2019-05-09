p6_aws_glue_crawler_stop() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue stop-crawler --name $name "$@"
}
