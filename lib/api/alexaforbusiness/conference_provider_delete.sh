######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_conference_provider_delete(conference_provider_arn)
#
# Arg(s):
#    conference_provider_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_conference_provider_delete() {
    local conference_provider_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-conference-provider --conference-provider-arn $conference_provider_arn "$@"
}