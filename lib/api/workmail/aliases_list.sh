p6_aws_workmail_aliases_list() {
    local organization_id="$1"
    local entity_id="$2"
    shift 2

    p6_log_and_run aws workmail list-aliases --organization-id $organization_id --entity-id $entity_id "$@"
}
