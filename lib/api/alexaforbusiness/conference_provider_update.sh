######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_conference_provider_update(conference_provider_arn, conference_provider_type, meeting_setting)
#
#  Args:
#	conference_provider_arn - 
#	conference_provider_type - 
#	meeting_setting - 
#
#>
######################################################################
p6_aws_alexaforbusiness_conference_provider_update() {
    local conference_provider_arn="$1"
    local conference_provider_type="$2"
    local meeting_setting="$3"
    shift 3

    p6_run_write_cmd aws alexaforbusiness update-conference-provider --conference-provider-arn $conference_provider_arn --conference-provider-type $conference_provider_type --meeting-setting $meeting_setting "$@"
}