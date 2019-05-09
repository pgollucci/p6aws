p6_aws_kms_aliases_list() {

    p6_run_read_cmd aws kms list-aliases "$@"
}
