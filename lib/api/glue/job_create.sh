p6_aws_glue_job_create() {
    local name="$1"
    local role="$2"
    local command="$3"
    shift 3

    p6_log_or_run aws glue create-job --name $name --role $role --command $command "$@"
}
