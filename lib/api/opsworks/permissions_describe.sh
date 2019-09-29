######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_permissions_describe()
#
#
#
#>
######################################################################
p6_aws_opsworks_permissions_describe() {

    p6_run_read_cmd aws opsworks describe-permissions "$@"
}