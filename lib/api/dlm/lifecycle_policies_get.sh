######################################################################
#<
#
# Function:
#      = p6_aws_dlm_lifecycle_policies_get()
#
#
#
#>
######################################################################
p6_aws_dlm_lifecycle_policies_get() {

    p6_run_read_cmd aws dlm get-lifecycle-policies "$@"
}