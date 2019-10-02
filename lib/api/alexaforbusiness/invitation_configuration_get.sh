######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_invitation_configuration_get()
#
#>
######################################################################
p6_aws_alexaforbusiness_invitation_configuration_get() {

    p6_run_read_cmd aws alexaforbusiness get-invitation-configuration "$@"
}