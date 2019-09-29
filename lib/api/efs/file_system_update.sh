######################################################################
#<
#
# Function:
#      = p6_aws_efs_file_system_update(file_system_id)
#
# Arg(s):
#    file_system_id - 
#
#
#>
######################################################################
p6_aws_efs_file_system_update() {
    local file_system_id="$1"
    shift 1

    p6_run_write_cmd aws efs update-file-system --file-system-id $file_system_id "$@"
}