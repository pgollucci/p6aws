######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_typed_link_facet_update(schema_arn, name, attribute_updates, identity_attribute_order)
#
# Arg(s):
#    schema_arn - 
#    name - 
#    attribute_updates - 
#    identity_attribute_order - 
#
#
#>
######################################################################
p6_aws_clouddirectory_typed_link_facet_update() {
    local schema_arn="$1"
    local name="$2"
    local attribute_updates="$3"
    local identity_attribute_order="$4"
    shift 4

    p6_run_write_cmd aws clouddirectory update-typed-link-facet --schema-arn $schema_arn --name $name --attribute-updates $attribute_updates --identity-attribute-order $identity_attribute_order "$@"
}