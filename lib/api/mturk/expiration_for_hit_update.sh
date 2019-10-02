######################################################################
#<
#
# Function:
#	p6_aws_mturk_expiration_for_hit_update(hit_id, expire_at)
#
#  Args:
#	hit_id - 
#	expire_at - 
#
#>
######################################################################
p6_aws_mturk_expiration_for_hit_update() {
    local hit_id="$1"
    local expire_at="$2"
    shift 2

    p6_run_write_cmd aws mturk update-expiration-for-hit --hit-id $hit_id --expire-at $expire_at "$@"
}