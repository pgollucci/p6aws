p6_aws_clouddirectory_facet_names_list() {
    local schema_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory list-facet-names --schema-arn $schema_arn "$@"
}
