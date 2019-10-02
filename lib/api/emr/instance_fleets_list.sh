######################################################################
#<
#
# Function:
#	p6_aws_emr_instance_fleets_list(cluster_id)
#
#  Args:
#	cluster_id - 
#
#>
######################################################################
p6_aws_emr_instance_fleets_list() {
    local cluster_id="$1"
    shift 1

    p6_run_read_cmd aws emr list-instance-fleets --cluster-id $cluster_id "$@"
}