p6_aws_waf_ip_sets_list() {

    p6_run_read_cmd aws waf list-ip-sets "$@"
}
