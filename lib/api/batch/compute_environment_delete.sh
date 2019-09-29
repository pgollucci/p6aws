######################################################################
#<
#
# Function:
#      = p6_aws_batch_compute_environment_delete(compute_environment)
#
# Arg(s):
#    compute_environment - 
#
#
#>
######################################################################
p6_aws_batch_compute_environment_delete() {
    local compute_environment="$1"
    shift 1

    p6_run_write_cmd aws batch delete-compute-environment --compute-environment $compute_environment "$@"
}