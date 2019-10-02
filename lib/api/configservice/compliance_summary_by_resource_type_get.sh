######################################################################
#<
#
# Function:
#	p6_aws_configservice_compliance_summary_by_resource_type_get()
#
#>
######################################################################
p6_aws_configservice_compliance_summary_by_resource_type_get() {

    p6_run_read_cmd aws configservice get-compliance-summary-by-resource-type "$@"
}