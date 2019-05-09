p6_aws_personalize_solution_version_describe() {
    local solution_version_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-solution-version --solution-version-arn $solution_version_arn "$@"
}
