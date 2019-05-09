p6_aws_ssm_compliance_summaries_list() {

    p6_run_read_cmd aws ssm list-compliance-summaries "$@"
}
