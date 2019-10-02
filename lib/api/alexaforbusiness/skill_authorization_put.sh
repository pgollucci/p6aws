######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skill_authorization_put(authorization_result, skill_id)
#
#  Args:
#	authorization_result - 
#	skill_id - 
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_authorization_put() {
    local authorization_result="$1"
    local skill_id="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness put-skill-authorization --authorization-result $authorization_result --skill-id $skill_id "$@"
}