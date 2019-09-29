######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_folder_get(repository_name, folder_path)
#
# Arg(s):
#    repository_name - 
#    folder_path - 
#
#
#>
######################################################################
p6_aws_codecommit_folder_get() {
    local repository_name="$1"
    local folder_path="$2"
    shift 2

    p6_run_read_cmd aws codecommit get-folder --repository-name $repository_name --folder-path $folder_path "$@"
}