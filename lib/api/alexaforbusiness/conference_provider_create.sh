p6_aws_alexaforbusiness_conference_provider_create() {
    local conference_provider_name="$1"
    local conference_provider_type="$2"
    local meeting_setting="$3"
    shift 3

    p6_run_write_cmd aws alexaforbusiness create-conference-provider --conference-provider-name $conference_provider_name --conference-provider-type $conference_provider_type --meeting-setting $meeting_setting "$@"
}
