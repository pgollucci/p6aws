p6_aws_ram_resource_share_invitation_reject() {
    local resource_share_invitation_arn="$1"
    shift 1

    p6_run_write_cmd aws ram reject-resource-share-invitation --resource-share-invitation-arn $resource_share_invitation_arn "$@"
}
