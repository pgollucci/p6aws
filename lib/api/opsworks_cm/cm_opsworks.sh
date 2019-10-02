######################################################################
#<
#
# Function:
#	p6_aws_opsworks_cm_cm_opsworks()
#
#>
######################################################################
p6_aws_opsworks_cm_cm_opsworks() {

    p6_run_write_cmd aws opsworks-cm opsworks-cm "$@"
}