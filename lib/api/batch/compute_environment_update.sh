######################################################################
#<
#
# Function:
#	p6_aws_batch_compute_environment_update(compute_environment)
#
#  Args:
#	compute_environment - 
#
#>
######################################################################
p6_aws_batch_compute_environment_update() {
    local compute_environment="$1"
    shift 1

    p6_run_write_cmd aws batch update-compute-environment --compute-environment $compute_environment "$@"
}