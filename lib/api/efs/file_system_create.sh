######################################################################
#<
#
# Function:
#      = p6_aws_efs_file_system_create(creation_token)
#
# Arg(s):
#    creation_token - 
#
#
#>
######################################################################
p6_aws_efs_file_system_create() {
    local creation_token="$1"
    shift 1

    p6_run_write_cmd aws efs create-file-system --creation-token $creation_token "$@"
}