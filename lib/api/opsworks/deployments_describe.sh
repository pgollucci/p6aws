######################################################################
#<
#
# Function:
#	p6_aws_opsworks_deployments_describe()
#
#>
######################################################################
p6_aws_opsworks_deployments_describe() {

    p6_run_read_cmd aws opsworks describe-deployments "$@"
}