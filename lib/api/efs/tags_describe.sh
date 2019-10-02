######################################################################
#<
#
# Function:
#	p6_aws_efs_tags_describe(file_system_id)
#
#  Args:
#	file_system_id - 
#
#>
######################################################################
p6_aws_efs_tags_describe() {
    local file_system_id="$1"
    shift 1

    p6_run_read_cmd aws efs describe-tags --file-system-id $file_system_id "$@"
}