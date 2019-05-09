p6_aws_snowball_jobs_list() {

    p6_run_read_cmd aws snowball list-jobs "$@"
}
