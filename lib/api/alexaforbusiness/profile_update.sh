######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_profile_update()
#
#>
######################################################################
p6_aws_alexaforbusiness_profile_update() {

    p6_run_write_cmd aws alexaforbusiness update-profile "$@"
}