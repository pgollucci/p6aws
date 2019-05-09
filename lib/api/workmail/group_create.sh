p6_aws_workmail_group_create() {
    local organization_id="$1"
    local name="$2"
    shift 2

    p6_log_or_run aws workmail create-group --organization-id $organization_id --name $name "$@"
}
