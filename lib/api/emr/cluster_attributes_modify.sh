######################################################################
#<
#
# Function:
#	p6_aws_emr_cluster_attributes_modify(cluster_id)
#
#  Args:
#	cluster_id - 
#
#>
######################################################################
p6_aws_emr_cluster_attributes_modify() {
    local cluster_id="$1"
    shift 1

    p6_run_write_cmd aws emr modify-cluster-attributes --cluster-id $cluster_id "$@"
}