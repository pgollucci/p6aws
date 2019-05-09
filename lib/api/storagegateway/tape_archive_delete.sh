p6_aws_storagegateway_tape_archive_delete() {
    local tape_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway delete-tape-archive --tape-arn $tape_arn "$@"
}
