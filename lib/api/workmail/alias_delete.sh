p6_aws_workmail_alias_delete() {
    local organization_id="$1"
    local entity_id="$2"
    local alias="$3"
    shift 3

    p6_run_write_cmd aws workmail delete-alias --organization-id $organization_id --entity-id $entity_id --alias $alias "$@"
}
