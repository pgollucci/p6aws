######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_elastic_ip_disassociate(elastic_ip)
#
# Arg(s):
#    elastic_ip - 
#
#
#>
######################################################################
p6_aws_opsworks_elastic_ip_disassociate() {
    local elastic_ip="$1"
    shift 1

    p6_run_write_cmd aws opsworks disassociate-elastic-ip --elastic-ip $elastic_ip "$@"
}