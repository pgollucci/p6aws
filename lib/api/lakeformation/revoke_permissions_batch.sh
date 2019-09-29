######################################################################
#<
#
# Function:
#      = p6_aws_lakeformation_revoke_permissions_batch(entries)
#
# Arg(s):
#    entries - 
#
#
#>
######################################################################
p6_aws_lakeformation_revoke_permissions_batch() {
    local entries="$1"
    shift 1

    p6_run_write_cmd aws lakeformation batch-revoke-permissions --entries $entries "$@"
}