######################################################################
#<
#
# Function:
#	p6_aws_efs_tags_delete(file_system_id, tag_keys)
#
#  Args:
#	file_system_id - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_efs_tags_delete() {
    local file_system_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws efs delete-tags --file-system-id $file_system_id --tag-keys $tag_keys "$@"
}