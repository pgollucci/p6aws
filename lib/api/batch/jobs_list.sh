p6_aws_batch_jobs_list() {

    p6_run_read_cmd aws batch list-jobs "$@"
}
