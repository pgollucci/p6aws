p6_aws_waf_rate_based_rules_list() {

    p6_run_read_cmd aws waf list-rate-based-rules "$@"
}
