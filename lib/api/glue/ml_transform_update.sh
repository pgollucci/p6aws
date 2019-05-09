p6_aws_glue_ml_transform_update() {
    local transform_id="$1"
    shift 1

    p6_run_write_cmd aws glue update-ml-transform --transform-id $transform_id "$@"
}
