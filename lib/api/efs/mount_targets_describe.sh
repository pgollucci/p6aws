######################################################################
#<
#
# Function:
#      = p6_aws_efs_mount_targets_describe()
#
#
#
#>
######################################################################
p6_aws_efs_mount_targets_describe() {

    p6_run_read_cmd aws efs describe-mount-targets "$@"
}