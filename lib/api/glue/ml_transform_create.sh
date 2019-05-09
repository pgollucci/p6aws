p6_aws_glue_ml_transform_create() {
    local name="$1"
    local input_record_tables="$2"
    local parameters="$3"
    local role="$4"
    shift 4

    p6_run_write_cmd aws glue create-ml-transform --name $name --input-record-tables $input_record_tables --parameters $parameters --role $role "$@"
}
