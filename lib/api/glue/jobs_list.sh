p6_aws_glue_jobs_list() {

    p6_run_read_cmd aws glue list-jobs "$@"
}
