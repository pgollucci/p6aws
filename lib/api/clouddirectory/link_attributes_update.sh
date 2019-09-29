######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_link_attributes_update(directory_arn, typed_link_specifier, attribute_updates)
#
# Arg(s):
#    directory_arn - 
#    typed_link_specifier - 
#    attribute_updates - 
#
#
#>
######################################################################
p6_aws_clouddirectory_link_attributes_update() {
    local directory_arn="$1"
    local typed_link_specifier="$2"
    local attribute_updates="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory update-link-attributes --directory-arn $directory_arn --typed-link-specifier $typed_link_specifier --attribute-updates $attribute_updates "$@"
}