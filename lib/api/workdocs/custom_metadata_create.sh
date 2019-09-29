######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_custom_metadata_create(resource_id, custom_metadata)
#
# Arg(s):
#    resource_id - 
#    custom_metadata - 
#
#
#>
######################################################################
p6_aws_workdocs_custom_metadata_create() {
    local resource_id="$1"
    local custom_metadata="$2"
    shift 2

    p6_run_write_cmd aws workdocs create-custom-metadata --resource-id $resource_id --custom-metadata $custom_metadata "$@"
}