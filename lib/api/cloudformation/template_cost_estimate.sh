p6_aws_cloudformation_template_cost_estimate() {

    p6_run_write_cmd aws cloudformation estimate-template-cost "$@"
}
