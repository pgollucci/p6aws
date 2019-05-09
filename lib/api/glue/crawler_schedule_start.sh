p6_aws_glue_crawler_schedule_start() {
    local crawler_name="$1"
    shift 1

    p6_log_or_run aws glue start-crawler-schedule --crawler-name $crawler_name "$@"
}
