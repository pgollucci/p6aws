p6_aws_mturk_qualification_type_create() {
    local name="$1"
    local description="$2"
    local qualification_type_status="$3"
    shift 3

    p6_run_write_cmd aws mturk create-qualification-type --name $name --description $description --qualification-type-status $qualification_type_status "$@"
}
