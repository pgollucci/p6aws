######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_attributes_remove(application_id, attribute_type, update_attributes_request)
#
# Arg(s):
#    application_id - 
#    attribute_type - 
#    update_attributes_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_attributes_remove() {
    local application_id="$1"
    local attribute_type="$2"
    local update_attributes_request="$3"
    shift 3

    p6_run_write_cmd aws pinpoint remove-attributes --application-id $application_id --attribute-type $attribute_type --update-attributes-request $update_attributes_request "$@"
}