######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_skill_reject(skill_id)
#
# Arg(s):
#    skill_id - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_skill_reject() {
    local skill_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness reject-skill --skill-id $skill_id "$@"
}