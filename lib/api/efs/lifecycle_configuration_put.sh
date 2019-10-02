######################################################################
#<
#
# Function:
#	p6_aws_efs_lifecycle_configuration_put(file_system_id, lifecycle_policies)
#
#  Args:
#	file_system_id - 
#	lifecycle_policies - 
#
#>
######################################################################
p6_aws_efs_lifecycle_configuration_put() {
    local file_system_id="$1"
    local lifecycle_policies="$2"
    shift 2

    p6_run_write_cmd aws efs put-lifecycle-configuration --file-system-id $file_system_id --lifecycle-policies $lifecycle_policies "$@"
}