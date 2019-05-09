p6_aws_alexaforbusiness_conference_provider_get() {
    local conference_provider_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness get-conference-provider --conference-provider-arn $conference_provider_arn "$@"
}
