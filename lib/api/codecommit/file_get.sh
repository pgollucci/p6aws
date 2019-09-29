######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_file_get(repository_name, file_path)
#
# Arg(s):
#    repository_name - 
#    file_path - 
#
#
#>
######################################################################
p6_aws_codecommit_file_get() {
    local repository_name="$1"
    local file_path="$2"
    shift 2

    p6_run_read_cmd aws codecommit get-file --repository-name $repository_name --file-path $file_path "$@"
}