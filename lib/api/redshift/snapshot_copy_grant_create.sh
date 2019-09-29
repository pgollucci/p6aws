######################################################################
#<
#
# Function:
#      = p6_aws_redshift_snapshot_copy_grant_create(snapshot_copy_grant_name)
#
# Arg(s):
#    snapshot_copy_grant_name - 
#
#
#>
######################################################################
p6_aws_redshift_snapshot_copy_grant_create() {
    local snapshot_copy_grant_name="$1"
    shift 1

    p6_run_write_cmd aws redshift create-snapshot-copy-grant --snapshot-copy-grant-name $snapshot_copy_grant_name "$@"
}