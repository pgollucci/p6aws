p6_aws_workmail_resource_create() {
    local organization_id="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_log_or_run aws workmail create-resource --organization-id $organization_id --name $name --type $type "$@"
}
