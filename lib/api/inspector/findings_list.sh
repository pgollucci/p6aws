p6_aws_inspector_findings_list() {

    p6_run_read_cmd aws inspector list-findings "$@"
}
