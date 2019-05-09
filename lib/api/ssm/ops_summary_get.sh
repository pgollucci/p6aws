p6_aws_ssm_ops_summary_get() {
    local aggregators="$1"
    shift 1

    p6_run_read_cmd aws ssm get-ops-summary --aggregators $aggregators "$@"
}
