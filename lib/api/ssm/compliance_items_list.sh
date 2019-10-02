######################################################################
#<
#
# Function:
#	p6_aws_ssm_compliance_items_list()
#
#>
######################################################################
p6_aws_ssm_compliance_items_list() {

    p6_run_read_cmd aws ssm list-compliance-items "$@"
}