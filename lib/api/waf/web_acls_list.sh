p6_aws_waf_web_acls_list() {

    p6_run_read_cmd aws waf list-web-acls "$@"
}
