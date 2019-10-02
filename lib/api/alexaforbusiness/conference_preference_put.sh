######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_conference_preference_put(conference_preference)
#
#  Args:
#	conference_preference - 
#
#>
######################################################################
p6_aws_alexaforbusiness_conference_preference_put() {
    local conference_preference="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness put-conference-preference --conference-preference $conference_preference "$@"
}