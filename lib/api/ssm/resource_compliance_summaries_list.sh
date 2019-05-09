p6_aws_ssm_resource_compliance_summaries_list() {

    p6_run_read_cmd aws ssm list-resource-compliance-summaries "$@"
}
