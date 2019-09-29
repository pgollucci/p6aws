######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_typed_link_facet_information_get(schema_arn, name)
#
# Arg(s):
#    schema_arn - 
#    name - 
#
#
#>
######################################################################
p6_aws_clouddirectory_typed_link_facet_information_get() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory get-typed-link-facet-information --schema-arn $schema_arn --name $name "$@"
}