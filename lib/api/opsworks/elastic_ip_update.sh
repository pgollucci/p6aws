######################################################################
#<
#
# Function:
#	p6_aws_opsworks_elastic_ip_update(elastic_ip)
#
#  Args:
#	elastic_ip - 
#
#>
######################################################################
p6_aws_opsworks_elastic_ip_update() {
    local elastic_ip="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-elastic-ip --elastic-ip $elastic_ip "$@"
}