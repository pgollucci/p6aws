######################################################################
#<
#
# Function:
#	p6_aws_mturk_assignment_reject(assignment_id, requester_feedback)
#
#  Args:
#	assignment_id - 
#	requester_feedback - 
#
#>
######################################################################
p6_aws_mturk_assignment_reject() {
    local assignment_id="$1"
    local requester_feedback="$2"
    shift 2

    p6_run_write_cmd aws mturk reject-assignment --assignment-id $assignment_id --requester-feedback $requester_feedback "$@"
}