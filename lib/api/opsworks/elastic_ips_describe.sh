######################################################################
#<
#
# Function:
#	p6_aws_opsworks_elastic_ips_describe()
#
#>
######################################################################
p6_aws_opsworks_elastic_ips_describe() {

    p6_run_read_cmd aws opsworks describe-elastic-ips "$@"
}