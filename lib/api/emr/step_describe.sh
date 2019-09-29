######################################################################
#<
#
# Function:
#      = p6_aws_emr_step_describe(cluster_id, step_id)
#
# Arg(s):
#    cluster_id - 
#    step_id - 
#
#
#>
######################################################################
p6_aws_emr_step_describe() {
    local cluster_id="$1"
    local step_id="$2"
    shift 2

    p6_run_read_cmd aws emr describe-step --cluster-id $cluster_id --step-id $step_id "$@"
}