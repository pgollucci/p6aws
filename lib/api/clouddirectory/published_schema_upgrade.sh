######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_published_schema_upgrade(development_schema_arn, published_schema_arn, minor_version)
#
# Arg(s):
#    development_schema_arn - 
#    published_schema_arn - 
#    minor_version - 
#
#
#>
######################################################################
p6_aws_clouddirectory_published_schema_upgrade() {
    local development_schema_arn="$1"
    local published_schema_arn="$2"
    local minor_version="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory upgrade-published-schema --development-schema-arn $development_schema_arn --published-schema-arn $published_schema_arn --minor-version $minor_version "$@"
}