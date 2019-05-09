p6_aws_codecommit_repository_description_update() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws codecommit update-repository-description --repository-name $repository_name "$@"
}
