p6_aws_clouddirectory_facet_get() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory get-facet --schema-arn $schema_arn --name $name "$@"
}
