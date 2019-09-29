######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_profile_get()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_profile_get() {

    p6_run_read_cmd aws alexaforbusiness get-profile "$@"
}