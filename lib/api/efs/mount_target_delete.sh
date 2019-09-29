######################################################################
#<
#
# Function:
#      = p6_aws_efs_mount_target_delete(mount_target_id)
#
# Arg(s):
#    mount_target_id - 
#
#
#>
######################################################################
p6_aws_efs_mount_target_delete() {
    local mount_target_id="$1"
    shift 1

    p6_run_read_cmd aws efs delete-mount-target --mount-target-id $mount_target_id "$@"
}