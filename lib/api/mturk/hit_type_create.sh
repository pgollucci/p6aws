######################################################################
#<
#
# Function:
#	p6_aws_mturk_hit_type_create(assignment_duration_in_seconds, reward, title, description)
#
#  Args:
#	assignment_duration_in_seconds - 
#	reward - 
#	title - 
#	description - 
#
#>
######################################################################
p6_aws_mturk_hit_type_create() {
    local assignment_duration_in_seconds="$1"
    local reward="$2"
    local title="$3"
    local description="$4"
    shift 4

    p6_run_write_cmd aws mturk create-hit-type --assignment-duration-in-seconds $assignment_duration_in_seconds --reward $reward --title $title --description $description "$@"
}