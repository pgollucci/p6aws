p6_aws_clouddirectory_read_batch() {
    local directory_arn="$1"
    local operations="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory batch-read --directory-arn $directory_arn --operations $operations "$@"
}
