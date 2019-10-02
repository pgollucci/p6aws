######################################################################
#<
#
# Function:
#	p6_aws_logs_resource_policy_delete()
#
#>
######################################################################
p6_aws_logs_resource_policy_delete() {

    p6_run_write_cmd aws logs delete-resource-policy "$@"
}