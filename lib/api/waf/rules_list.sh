p6_aws_waf_rules_list() {

    p6_log_and_run aws waf list-rules "$@"
}
