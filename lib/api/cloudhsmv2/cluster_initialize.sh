######################################################################
#<
#
# Function:
#	p6_aws_cloudhsmv2_cluster_initialize(cluster_id, signed_cert, trust_anchor)
#
#  Args:
#	cluster_id - 
#	signed_cert - 
#	trust_anchor - 
#
#>
######################################################################
p6_aws_cloudhsmv2_cluster_initialize() {
    local cluster_id="$1"
    local signed_cert="$2"
    local trust_anchor="$3"
    shift 3

    p6_run_write_cmd aws cloudhsmv2 initialize-cluster --cluster-id $cluster_id --signed-cert $signed_cert --trust-anchor $trust_anchor "$@"
}