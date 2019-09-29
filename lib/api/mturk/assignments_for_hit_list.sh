######################################################################
#<
#
# Function:
#      = p6_aws_mturk_assignments_for_hit_list(hit_id)
#
# Arg(s):
#    hit_id - 
#
#
#>
######################################################################
p6_aws_mturk_assignments_for_hit_list() {
    local hit_id="$1"
    shift 1

    p6_run_read_cmd aws mturk list-assignments-for-hit --hit-id $hit_id "$@"
}