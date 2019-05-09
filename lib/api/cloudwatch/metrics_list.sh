p6_aws_cloudwatch_metrics_list() {

    p6_run_read_cmd aws cloudwatch list-metrics "$@"
}
