######################################################################
#<
#
# Function:
#      = p6_aws_glue_resource_policy_get()
#
#
#
#>
######################################################################
p6_aws_glue_resource_policy_get() {

    p6_run_read_cmd aws glue get-resource-policy "$@"
}