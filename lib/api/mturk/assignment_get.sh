######################################################################
#<
#
# Function:
#      = p6_aws_mturk_assignment_get(assignment_id)
#
# Arg(s):
#    assignment_id - 
#
#
#>
######################################################################
p6_aws_mturk_assignment_get() {
    local assignment_id="$1"
    shift 1

    p6_run_read_cmd aws mturk get-assignment --assignment-id $assignment_id "$@"
}