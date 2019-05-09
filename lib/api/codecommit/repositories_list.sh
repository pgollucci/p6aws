p6_aws_codecommit_repositories_list() {

    p6_run_read_cmd aws codecommit list-repositories "$@"
}
