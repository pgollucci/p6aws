######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_user_delete(enrollment_id)
#
# Arg(s):
#    enrollment_id - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_user_delete() {
    local enrollment_id="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-user --enrollment-id $enrollment_id "$@"
}