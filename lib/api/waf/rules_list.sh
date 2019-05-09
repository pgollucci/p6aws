p6_aws_waf_rules_list() {

    p6_run_read_cmd aws waf list-rules "$@"
}
