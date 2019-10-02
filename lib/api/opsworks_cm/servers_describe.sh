######################################################################
#<
#
# Function:
#	p6_aws_opsworks_cm_servers_describe()
#
#>
######################################################################
p6_aws_opsworks_cm_servers_describe() {

    p6_run_read_cmd aws opsworks-cm describe-servers "$@"
}