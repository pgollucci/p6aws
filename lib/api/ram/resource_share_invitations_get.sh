######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_share_invitations_get()
#
#
#
#>
######################################################################
p6_aws_ram_resource_share_invitations_get() {

    p6_run_read_cmd aws ram get-resource-share-invitations "$@"
}