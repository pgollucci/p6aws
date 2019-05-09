p6_aws_codecommit_repository_triggers_put() {
    local repository_name="$1"
    local triggers="$2"
    shift 2

    p6_run_write_cmd aws codecommit put-repository-triggers --repository-name $repository_name --triggers $triggers "$@"
}
