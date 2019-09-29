######################################################################
#<
#
# Function:
#      = p6_aws_efs_tags_create(file_system_id, tags)
#
# Arg(s):
#    file_system_id - 
#    tags - 
#
#
#>
######################################################################
p6_aws_efs_tags_create() {
    local file_system_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws efs create-tags --file-system-id $file_system_id --tags $tags "$@"
}