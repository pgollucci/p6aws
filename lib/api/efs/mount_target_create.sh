######################################################################
#<
#
# Function:
#	p6_aws_efs_mount_target_create(file_system_id, subnet_id)
#
#  Args:
#	file_system_id - 
#	subnet_id - 
#
#>
######################################################################
p6_aws_efs_mount_target_create() {
    local file_system_id="$1"
    local subnet_id="$2"
    shift 2

    p6_run_read_cmd aws efs create-mount-target --file-system-id $file_system_id --subnet-id $subnet_id "$@"
}