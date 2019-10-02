######################################################################
#<
#
# Function:
#	p6_aws_emr_steps_add(cluster_id, steps)
#
#  Args:
#	cluster_id - 
#	steps - 
#
#>
######################################################################
p6_aws_emr_steps_add() {
    local cluster_id="$1"
    local steps="$2"
    shift 2

    p6_run_write_cmd aws emr add-steps --cluster-id $cluster_id --steps $steps "$@"
}