p6_aws_clouddirectory_directory_enable() {
    local directory_arn="$1"
    shift 1

    p6_run_write_cmd aws clouddirectory enable-directory --directory-arn $directory_arn "$@"
}
