p6_aws_glue_crawler_create() {
    local name="$1"
    local role="$2"
    local targets="$3"
    shift 3

    p6_run_write_cmd aws glue create-crawler --name $name --role $role --targets $targets "$@"
}
