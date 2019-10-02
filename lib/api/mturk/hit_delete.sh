######################################################################
#<
#
# Function:
#	p6_aws_mturk_hit_delete(hit_id)
#
#  Args:
#	hit_id - 
#
#>
######################################################################
p6_aws_mturk_hit_delete() {
    local hit_id="$1"
    shift 1

    p6_run_write_cmd aws mturk delete-hit --hit-id $hit_id "$@"
}