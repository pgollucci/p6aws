######################################################################
#<
#
# Function:
#	p6_aws_ram_resource_share_invitation_accept(resource_share_invitation_arn)
#
#  Args:
#	resource_share_invitation_arn - 
#
#>
######################################################################
p6_aws_ram_resource_share_invitation_accept() {
    local resource_share_invitation_arn="$1"
    shift 1

    p6_run_write_cmd aws ram accept-resource-share-invitation --resource-share-invitation-arn $resource_share_invitation_arn "$@"
}