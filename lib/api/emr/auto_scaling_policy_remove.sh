######################################################################
#<
#
# Function:
#	p6_aws_emr_auto_scaling_policy_remove(cluster_id, instance_group_id)
#
#  Args:
#	cluster_id - 
#	instance_group_id - 
#
#>
######################################################################
p6_aws_emr_auto_scaling_policy_remove() {
    local cluster_id="$1"
    local instance_group_id="$2"
    shift 2

    p6_run_write_cmd aws emr remove-auto-scaling-policy --cluster-id $cluster_id --instance-group-id $instance_group_id "$@"
}