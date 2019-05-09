p6_aws_batch_job_queue_delete() {
    local job_queue="$1"
    shift 1

    p6_run_write_cmd aws batch delete-job-queue --job-queue $job_queue "$@"
}
