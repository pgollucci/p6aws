######################################################################
#<
#
# Function:
#	p6_aws_ssm_association_batch_create(entries)
#
#  Args:
#	entries - 
#
#>
######################################################################
p6_aws_ssm_association_batch_create() {
    local entries="$1"
    shift 1

    p6_run_write_cmd aws ssm create-association-batch --entries $entries "$@"
}