######################################################################
#<
#
# Function:
#      = p6_aws_efs_mount_target_security_groups_describe(mount_target_id)
#
# Arg(s):
#    mount_target_id - 
#
#
#>
######################################################################
p6_aws_efs_mount_target_security_groups_describe() {
    local mount_target_id="$1"
    shift 1

    p6_run_read_cmd aws efs describe-mount-target-security-groups --mount-target-id $mount_target_id "$@"
}