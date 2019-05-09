p6_aws_alexaforbusiness_invitation_configuration_put() {
    local organization_name="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness put-invitation-configuration --organization-name $organization_name "$@"
}
