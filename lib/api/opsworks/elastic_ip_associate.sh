######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_elastic_ip_associate(elastic_ip)
#
# Arg(s):
#    elastic_ip - 
#
#
#>
######################################################################
p6_aws_opsworks_elastic_ip_associate() {
    local elastic_ip="$1"
    shift 1

    p6_run_write_cmd aws opsworks associate-elastic-ip --elastic-ip $elastic_ip "$@"
}