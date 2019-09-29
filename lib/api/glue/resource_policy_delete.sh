######################################################################
#<
#
# Function:
#      = p6_aws_glue_resource_policy_delete()
#
#
#
#>
######################################################################
p6_aws_glue_resource_policy_delete() {

    p6_run_write_cmd aws glue delete-resource-policy "$@"
}