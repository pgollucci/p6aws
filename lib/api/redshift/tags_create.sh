######################################################################
#<
#
# Function:
#      = p6_aws_redshift_tags_create(resource_name, tags)
#
# Arg(s):
#    resource_name - 
#    tags - 
#
#
#>
######################################################################
p6_aws_redshift_tags_create() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws redshift create-tags --resource-name $resource_name --tags $tags "$@"
}